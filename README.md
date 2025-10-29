# OnePlus Archive

<img src="assets/logo.png" width="96" alt="OnePlus Archive Logo">

[![Hits](https://hitscounter.dev/api/hit?url=https%3A%2F%2Fgithub.com%2Fspike0en%2Foplus_firmware_archive&label=Hits&icon=github&color=%23b02a37&labelColor=2E2E3F)](https://github.com/spike0en/oplus_firmware_archive) 

[![Build Status](https://img.shields.io/github/actions/workflow/status/spike0en/oneplus_archive/dump.yml?label=Build&logo=githubactions&logoColor=white&color=18673F&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oneplus_archive/actions) 
[![Total Downloads](https://img.shields.io/github/downloads/spike0en/oneplus_archive/total?label=Downloads&logo=github&logoColor=white&color=9E9D10&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oneplus_archive/releases) 

[![Stars](https://img.shields.io/github/stars/spike0en/oneplus_archive?label=Stars&logo=github&logoColor=white&color=fb481f&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oneplus_archive/stargazers) 
[![Contributors](https://img.shields.io/github/contributors/spike0en/oneplus_archive?label=Contributors&logo=github&logoColor=white&color=2b2a7b&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oneplus_archive/graphs/contributors) 
[![Forks](https://img.shields.io/github/forks/spike0en/oneplus_archive?label=Forks&logo=github&logoColor=white&color=eeb705&labelColor=2E2E3F&style=flat)](https://github.com/spike0en/oneplus_archive/network/members)

---

## Overview 🔍

This project is an a firmware repository of OxygenOS & ColorOS, offering stock OTA images for **OnePlus** phones. All files are [archived](https://archive.org/download/oneplus_archive/spike0en/), ensuring easy access and long-term preservation.

### Key features:
- Helps in restoring stock firmware and recovery from soft‑bricks.
- Provides stock OTA images in an archived form, enabling access to specific partition images without needing to download the full OEM firmware, thus saving bandwidth and storage.
- Makes `boot` / `init_boot` images available for rooting, un‑rooting or partition recovery.
- Generates OTA images utilizing AOSP’s OTA extraction tool that allows extracting incremental OTA updates when full firmware packages are unavailable.
- Supports all regional variants of the device model available.

---

## Disclaimer 🚨

By using this archive, you acknowledge and accept these terms:
- **Authenticity** – All firmware files in this archive are **unaltered, unmodified and sourced directly from the OEM**.  
- **Flash at Your Own Risk** – Installing firmware on an **unlocked bootloader** device carries inherent risk of bricking.  
- **Compatibility** – Ensure the firmware matches your specific **OnePlus device variant** before installation.  
- **No Warranty or Official Support** – This is a **community project, unaffiliated with [OnePlus](https://www.oneplus.com/)**. The project team is **not liable** for device damage, data loss or failures.  
- **Open Source Integrity** – Redistribution is permitted when given proper attribution. Reselling freely available firmware is strictly prohibited.

---

## Downloads 📥

- Releases are tagged using the format: `version_name_region` and can be found [here](https://github.com/spike0en/oneplus_archive/releases).  
- The firmware files are categorized into: `boot`, `firmware` and `logical` based on their nature.  
- The classification of images can be found in [`devices.json`](https://github.com/spike0en/oneplus_archive/blob/main/devices.json).

### Region codes

| Code | Region                                           |
|------|--------------------------------------------------|
| IN   | India                                            |
| CN   | China                                            |
| NA   | North America                                    |
| ROW  | Rest of World (Global/GLO & Europe/EU variants)  |

> 📝 **Note:** The `boot` and `firmware` categories are identical for both `EU` and `GLO` variants. Only `logical` partitions differ and are needed for full stock ROM flashing.

---

## Supported Models

### OnePlus 15 — *infiniti*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **PLK110**  | CN     | [Releases for PLK110](https://github.com/spike0en/oneplus_archive/releases?q=PLK110) |
| **CPH2747** | EU/GLO | [Releases for CPH2747](https://github.com/spike0en/oneplus_archive/releases?q=CPH2747) |
| **CPH2749** | IN     | [Releases for CPH2749](https://github.com/spike0en/oneplus_archive/releases?q=CPH2749) |
| **CPH2745** | NA     | [Releases for CPH2745](https://github.com/spike0en/oneplus_archive/releases?q=CPH2745) |

---

### OnePlus Pad 3 / Pad 2 Pro — *erhai*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **OPD2415** | ROW    | [Releases for OPD2415](https://github.com/spike0en/oneplus_archive/releases?q=OPD2415) |
| **OPD2413** | CN     | [Releases for OPD2413](https://github.com/spike0en/oneplus_archive/releases?q=OPD2413) |

---

### OnePlus 13 — *dodge*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **CPH2649** | IN     | [Releases for CPH2649](https://github.com/spike0en/oneplus_archive/releases?q=CPH2649) |
| **CPH2653** | ROW    | [Releases for CPH2653](https://github.com/spike0en/oneplus_archive/releases?q=CPH2653) |
| **CPH2655** | NA     | [Releases for CPH2655](https://github.com/spike0en/oneplus_archive/releases?q=CPH2655) |
| **PJZ110**  | CN     | [Releases for PJZ110](https://github.com/spike0en/oneplus_archive/releases?q=PJZ110)   |

---

### OnePlus 13(S/T) — *pagani*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **CPH2723** | ROW    | [Releases for CPH2723](https://github.com/spike0en/oneplus_archive/releases?q=CPH2723) |
| **PKX110**  | CN     | [Releases for PKX110](https://github.com/spike0en/oneplus_archive/releases?q=PKX110)   |

---

### OnePlus 13R / Ace 5 — *giulia*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **CPH2691** | IN     | [Releases for CPH2691](https://github.com/spike0en/oneplus_archive/releases?q=CPH2691) |
| **CPH2645** | ROW    | [Releases for CPH2645](https://github.com/spike0en/oneplus_archive/releases?q=CPH2645) |
| **CPH2647** | NA     | [Releases for CPH2647](https://github.com/spike0en/oneplus_archive/releases?q=CPH2647) |
| **PKG110**  | CN     | [Releases for PKG110](https://github.com/spike0en/oneplus_archive/releases?q=PKG110)   |

---

### OnePlus 12 — *waffle*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **CPH2573** | IN     | [Releases for CPH2573](https://github.com/spike0en/oneplus_archive/releases?q=CPH2573) |
| **CPH2581** | ROW    | [Releases for CPH2581](https://github.com/spike0en/oneplus_archive/releases?q=CPH2581) |
| **CPH2583** | NA     | [Releases for CPH2583](https://github.com/spike0en/oneplus_archive/releases?q=CPH2583) |
| **PJD110**  | CN     | [Releases for PJD110](https://github.com/spike0en/oneplus_archive/releases?q=PJD110)   |

---

### OnePlus 12R / Ace 3 — *aston*

| Model ID    | Region | Releases |
|-------------|--------|----------|
| **CPH2585** | IN     | [Releases for CPH2585](https://github.com/spike0en/oneplus_archive/releases?q=CPH2585) |
| **CPH2609** | ROW    | [Releases for CPH2609](https://github.com/spike0en/oneplus_archive/releases?q=CPH2609) |
| **CPH2611** | NA     | [Releases for CPH2611](https://github.com/spike0en/oneplus_archive/releases?q=CPH2611) |
| **PJE110**  | CN     | [Releases for PJE110](https://github.com/spike0en/oneplus_archive/releases?q=PJE110)   |

---

## Integrity Check ✅

Ensure that downloaded OTA images are authentic by verifying their SHA‑256 hashes:

### Bash (Linux/macOS)

```bash
sha256sum -c *-hash.sha256
```

### Windows

```bash
certutil -hashfile <filename> SHA256
```
- Alternatively, you may use tools such as [OpenHashTab](https://github.com/namazso/OpenHashTab) to perform hash verification.

---

## Acknowledgments 🤝

Special thanks to our key contributors and co‑maintainers for their invaluable support and work.

### Contributors

<p align="left">
  <a href="https://github.com/luk1337"><img src="https://img.shields.io/badge/-luk1337-1E88E5?style=flat-square&logo=github&logoColor=white" alt="luk1337"></a>
  <a href="https://github.com/arter97"><img src="https://img.shields.io/badge/-arter97-43A047?style=flat-square&logo=github&logoColor=white" alt="arter97"></a>
</p>

### Co-maintainers

<p align="left">
  <a href="https://github.com/madmax7896"><img src="https://img.shields.io/badge/-Madmax-0078D7?style=flat-square&logo=github&logoColor=white" alt="madmax7896"></a>
  <a href="https://github.com/chandu078"><img src="https://img.shields.io/badge/-Chandu-FF5C57?style=flat-square&logo=github&logoColor=white" alt="chandu078"></a>
  <a href="https://github.com/HELLBOY017"><img src="https://img.shields.io/badge/-HELLBOY017-00BCD4?style=flat-square&logo=github&logoColor=white" alt="HELLBOY017"></a>
  <a href="https://github.com/gotenksIN"><img src="https://img.shields.io/badge/-Omkar-4CAF50?style=flat-square&logo=github&logoColor=white" alt="gotenksIN"></a>
  <a href="https://github.com/PHATWalrus"><img src="https://img.shields.io/badge/-Phatwalrus-9E9D10?style=flat-square&logo=github&logoColor=white" alt="PHATWalrus"></a>
  <a href="https://github.com/yashaswee-exe"><img src="https://img.shields.io/badge/-Yashaswee-8E24AA?style=flat-square&logo=github&logoColor=white" alt="yashaswee-exe"></a>
  <a href="https://github.com/Daniel210191"><img src="https://img.shields.io/badge/-Daniel-E91E63?style=flat-square&logo=github&logoColor=white" alt="Daniel210191"></a>
</p>

---

## Support the Project ⭐

If this archive has been helpful, please consider **[starring the repository](https://github.com/spike0en/oneplus_archive/stargazers)**. Your support helps keep the project discoverable and active!

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=spike0en/oneplus_archive&type=Date&theme=dark" />
  <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=spike0en/oneplus_archive&type=Date" />
  <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=spike0en/oneplus_archive&type=Date" />
</picture>

---
