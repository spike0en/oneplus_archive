#!/bin/bash
#
# SPDX-FileCopyrightText: luk1337
# SPDX-License-Identifier: MIT
# Modified by: spike0en
#
set -ex

# Define path to devices.json
DEVICES_JSON="devices.json"

# Device codename, region, and workflow run URL from arguments
DEVICE_CODENAME="$1"
REGION="$2"

# Define partition categories
BOOT=$(jq -r --arg model "$DEVICE_CODENAME" '.devices[$model].boot_partitions | join(" ")' "$DEVICES_JSON")
FIRMWARE=$(jq -r --arg model "$DEVICE_CODENAME" '.devices[$model].firmware_partitions | join(" ")' "$DEVICES_JSON")

# Get the workflow run URL (last argument)
WORKFLOW_RUN_URL="${!#}"

# Collect OTA URLs into an array, excluding codename, region, and workflow URL
declare -a OTA_URLS
for ((i=3; i<=$#-1; i++)); do
    OTA_URLS+=("${!i}")
done

echo "Device Codename: $DEVICE_CODENAME"
echo "Boot Partitions: $BOOT"
echo "Firmware Partitions: $FIRMWARE"
echo "Region: $REGION"
echo "Workflow Run URL: $WORKFLOW_RUN_URL"

# Download ota file using gdown (for Google Drive links)
download_with_gdown() {
    echo "Downloading with gdown: $1"
    gdown --fuzzy "$1" -O ota.zip
}

# Download ota file using aria2c (for other URLs)
download_with_aria2c() {
    echo "Downloading with aria2c: $1"
    aria2c -x 5 "$1" -o ota.zip
}

# Determine the correct download method based on URL and call it
download_file() {
    local url="$1"
    echo "Processing URL: $url"
    if [[ "$url" == *"drive.google.com"* ]]; then
        download_with_gdown "$url"
    else
        download_with_aria2c "$url"
    fi
}

# Check if at least one URL is provided
if [ ${#OTA_URLS[@]} -eq 0 ]; then
    echo "Error: No OTA URL provided." >&2
    exit 1
fi

# Extract full update
download_file "${OTA_URLS[0]}"
unzip ota.zip payload.bin
mv payload.bin payload_working.bin
TAG="`unzip -p ota.zip META-INF/com/android/metadata | grep ^version_name= | cut -b 14- | sed 's/ /_/g'`"
BODY="[$TAG](${OTA_URLS[0]}) (full)"
rm ota.zip
mkdir ota
(
    ./bin/ota_extractor -output_dir ota -payload payload_working.bin
    rm payload_working.bin
) & # Allow subsequent downloads to be done in parallel

# Apply incrementals
for i in "${OTA_URLS[@]:1}"; do # Iterate from the second URL
    download_file "$i"
    unzip ota.zip payload.bin
    wait
    mv payload.bin payload_working.bin
    TAG="`unzip -p ota.zip META-INF/com/android/metadata | grep ^version_name= | cut -b 14- | sed 's/ /_/g'`"
    BODY="$BODY -> [$TAG]($i)"
    rm ota.zip

    (
        mkdir ota_new
        ./bin/ota_extractor -input-dir ota -output_dir ota_new -payload payload_working.bin

        rm -rf ota
        mv ota_new ota

        rm payload_working.bin
    ) & # Allow subsequent downloads to be done in parallel
done
wait

# Prepare output folders
mkdir -p out boot firmware

cd ota
# Move boot-related images
for img in $BOOT; do
    if [ -f "${img}.img" ]; then
        mv "${img}.img" ../boot/
    fi
done

# Move firmware-related images
for img in $FIRMWARE; do
    if [ -f "${img}.img" ]; then
        mv "${img}.img" ../firmware/
    fi
done

cd ../boot
# Generate SHA-256 hashes for boot images
ls * | parallel openssl dgst -sha256 -r | sort -k2 -V > ../out/${TAG}_${REGION}-boot-hash.sha256

# Compress boot images
7z a -mx6 ../out/${TAG}_${REGION}-boot.7z *
cd ..

cd firmware
# Generate SHA-256 hashes for firmware images
ls * | parallel openssl dgst -sha256 -r | sort -k2 -V > ../out/${TAG}_${REGION}-firmware-hash.sha256

# Compress firmware images
7z a -mx6 ../out/${TAG}_${REGION}-firmware.7z *
cd ..
wait

# Sanitize filenames for release assets
cd out
for f in *; do
    safe_name=$(echo "$f" | sed 's/(/-/' | sed 's/)//g')
    if [ "$f" != "$safe_name" ]; then
        mv "$f" "$safe_name"
    fi
done
cd ..

# Cleanup
rm -rf ota boot firmware

# Echo tag name and release body
echo "tag=$TAG" >> "$GITHUB_OUTPUT"
echo "body<<EOF" >> "$GITHUB_OUTPUT"
echo "$BODY" >> "$GITHUB_OUTPUT"
echo "" >> "$GITHUB_OUTPUT"
echo "**Workflow Run**: [Here]($WORKFLOW_RUN_URL)" >> "$GITHUB_OUTPUT"
echo "EOF" >> "$GITHUB_OUTPUT"