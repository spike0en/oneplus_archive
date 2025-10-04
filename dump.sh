#!/bin/bash
#
# SPDX-FileCopyrightText: luk1337
# SPDX-License-Identifier: MIT
# Modified by: spike0en
#
set -ex

# Define partition categories
BOOT="boot init_boot vendor_boot recovery dtbo"
FIRMWARE="abl aop_config aop bluetooth cpucp cpucp_dtb devcfg dsp engineering_cdt featenabler hyp imagefv keymaster modem oplus_sec oplusstanvbk qupfw shrm splash tz uefi uefisecapp xbl_config xbl_ramdump xbl"

# Extract full update
aria2c -x5 "$1" -o ota.zip
unzip ota.zip payload.bin
mv payload.bin payload_working.bin
TAG="`unzip -p ota.zip META-INF/com/android/metadata | grep ^version_name= | cut -d= -f2-`"
BODY="[$TAG]($1) (full)"
rm ota.zip
mkdir ota
(
    ./bin/ota_extractor -output_dir ota -payload payload_working.bin
    rm payload_working.bin
) & # Allow subsequent downloads to be done in parallel

# Apply incrementals
for i in ${@:2}; do
    aria2c -x5 "$i" -o ota.zip
    unzip ota.zip payload.bin
    wait
    mv payload.bin payload_working.bin
    TAG="`unzip -p ota.zip META-INF/com/android/metadata | grep ^version_name= | cut -d= -f2-`"
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
mkdir out
mkdir boot
mkdir firmware

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
# Generate hashes for boot images
for h in md5 sha1 sha256; do
    ls * | parallel openssl dgst -$h -r | sort -k2 -V > ../out/${TAG}-boot-hash.$h &
done
ls * | parallel xxh128sum | sort -k2 -V > ../out/${TAG}-boot-hash.xxh128 &
# Compress boot images
7z a -mx6 ../out/${TAG}-boot.7z * &
cd ..

cd firmware
# Generate hashes for firmware images
for h in md5 sha1 sha256; do
    ls * | parallel openssl dgst -$h -r | sort -k2 -V > ../out/${TAG}-firmware-hash.$h &
done
ls * | parallel xxh128sum | sort -k2 -V > ../out/${TAG}-firmware-hash.xxh128 &
# Compress firmware images
7z a -mx6 ../out/${TAG}-firmware.7z * &
cd ..

wait

# Cleanup
rm -rf ota boot firmware

# Echo tag name and release body
echo "tag=$TAG" >> "$GITHUB_OUTPUT"
echo "body=$BODY" >> "$GITHUB_OUTPUT"
