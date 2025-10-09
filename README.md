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
- Select your **device model** from the dropdown list below to access its **Release Index**.
- **Region codes** used:
  - `IN` → India  
  - `ROW` → Rest of World (Global / Europe)  
  - `CN` → China  
  - `NA` → North America

---

<details>
  <summary>Oneplus 13 - dodge</summary>

<br>

| Model ID   | Region | Releases |
|------------|--------|----------|
| CPH2649    | IN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2649&expanded=true) |
| CPH2653    | ROW    | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2653&expanded=true) |
| CPH2655    | NA     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2655&expanded=true) |
| PJZ110     | CN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=PJZ110&expanded=true)  |

</details>

<details>
  <summary>Oneplus 13(S/T) - pagani</summary>

<br>

| Model ID   | Region | Releases |
|------------|--------|----------|
| CPH2723    | ROW    | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2723&expanded=true) |
| PKX110     | CN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=PKX110&expanded=true)  |

</details>

<details>
  <summary>Oneplus 13R / Ace 5 - giulia</summary>

<br>

| Model ID   | Region | Releases |
|------------|--------|----------|
| CPH2691    | IN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2691&expanded=true) |
| CPH2645    | ROW    | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2645&expanded=true) |
| CPH2647    | NA     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2647&expanded=true) |
| PKG110     | CN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=PKG110&expanded=true)  |

</details>

<details>
  <summary>Oneplus 12 - waffle</summary>

<br>

| Model ID   | Region | Releases |
|------------|--------|----------|
| CPH2573    | IN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2573&expanded=true) |
| CPH2581    | ROW    | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2581&expanded=true) |
| CPH2583    | NA     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2583&expanded=true) |
| PJD110     | CN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=PJD110&expanded=true)  |

</details>

<details>
  <summary>Oneplus 12R / Ace 3 - aston</summary>

<br>

| Model ID   | Region | Releases |
|------------|--------|----------|
| CPH2585    | IN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2585&expanded=true) |
| CPH2609    | ROW    | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2609&expanded=true) |
| CPH2611    | NA     | [View](https://github.com/spike0en/oneplus_archive/releases?q=CPH2611&expanded=true) |
| PJE110     | CN     | [View](https://github.com/spike0en/oneplus_archive/releases?q=PJE110&expanded=true)  |

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
