# Oneplus Firmware Archive

[![Hits](https://hitscounter.dev/api/hit?url=https%3A%2F%2Fgithub.com%2Fspike0en%2Foplus_firmware_archive&label=Hits&icon=github&color=%23b02a37&labelColor=2E2E3F)](https://github.com/spike0en/oplus_firmware_archive)

[![Stars](https://img.shields.io/github/stars/spike0en/oplus_firmware_archive?label=Stars&logo=github&logoColor=white&color=fb481f&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oplus_firmware_archive/stargazers)
[![Contributors](https://img.shields.io/github/contributors/spike0en/oplus_firmware_archive?label=Contributors&logo=github&logoColor=white&color=2b2a7b&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oplus_firmware_archive/graphs/contributors)
[![Forks](https://img.shields.io/github/forks/spike0en/oplus_firmware_archive?label=Forks&logo=github&logoColor=white&color=eeb705&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oplus_firmware_archive/network/members)

[![Total Downloads](https://img.shields.io/github/downloads/spike0en/oplus_firmware_archive/total?label=Downloads&logo=github&logoColor=white&color=9E9D10&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oplus_firmware_archive/releases)
[![Latest Release](https://img.shields.io/github/release/spike0en/oplus_firmware_archive?label=Latest&logo=git&logoColor=white&color=18673F&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oplus_firmware_archive/releases/latest)

## About 

- This archive contains stock firmware images for various OnePlus phones.
- It is useful for flashing custom ROMs that require a specific firmware version, especially when that version isn't included with the ROM itself.
- Additionally, the archive provides stock boot images in an archived fashion, which can be helpful for rooting your device or restoring stock partitions during OTA updates.

---

## Downloads 📥

- The releases have been tagged [**here**](https://github.com/spike0en/oplus_firmware_archive/releases) following the format: `version_name`_`region`.
- Select your **device model** from the dropdown list below to access it's **Release Index**:

---

<details>
  <summary>Oneplus 13 - dodge</summary>

<br>

| Model ID    | Region           | Releases |
|-------------|------------------|----------|
| CPH2649     | India (IN)                 | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2649&expanded=true) |
| CPH2653     | Global (ROW) / Europe (EU) | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2653&expanded=true) |
| CPH2655     | North America (NA)         | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2655&expanded=true) |
| PJZ110      | China (CN)                 | [View](https://github.com/spike0en/oneplus_archive/releases?q=PJZ110&expanded=true)  |

</details>

<details>
  <summary>Oneplus 12 - waffle</summary>

<br>

| Model ID   | Region            | Releases |
|------------|-------------------|----------|
| CPH2573    | India (IN)                 | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2573&expanded=true) |
| CPH2581    | Global (ROW) / Europe (EU) | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2581&expanded=true) |
| CPH2583    | North America (NA)         | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2583&expanded=true) |
| PJD110     | China (CN)                 | [View](https://github.com/spike0en/oneplus_archive/releases?q=PJD110&expanded=true)  |

</details>

---

## Integrity Check

You can check the downloaded OTA image file's integrity using the following commands for both Bash (Linux/macOS) and Windows environments:

### Bash (Linux/macOS)

```bash
sha256sum -c *-hash.sha256
```

### Windows

```bash
certutil -hashfile <filename> SHA256
```
- Alternatively users can use open source utilites like [OpenHashTab](https://github.com/namazso/OpenHashTab)


## Acknowledgments

Special thanks to these contributors for their invaluable work and support:
- **[luk1337](https://github.com/luk1337/oplus_archive)**
- **[arter97](https://github.com/arter97/nothing_archive)**
