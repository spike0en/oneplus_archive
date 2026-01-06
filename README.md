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

This project is an a firmware repository of OxygenOS & ColorOS, offering stock OTA images for **OnePlus** phones. All files are [archived](https://archive.org/details/oneplus_archive), ensuring easy access and long-term preservation.

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

| Code | Region         |
|------|----------------|
| IN   | India          |
| CN   | China          |
| EU   | Europe         |
| GLO  | Global         |
| NA   | North America  |
| ROW  | Rest of World  |

> 📝 **Note:**  
> - The `boot` and `firmware` categories are identical for both `EU` and `GLO` variants. Only `logical` partitions differ and are needed for full stock ROM flashing.  
> - The **ROW (Rest of World)** region is used when there are **no specific releases for EU or GLO** available or identifiable for that particular model.

---

## Supported Models

### OnePlus 15 — *infiniti*

| Model ID    | Releases |
|-------------|-----------|
| **PLK110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PLK110&expanded=true) |
| **CPH2749** | [NA](https://github.com/spike0en/oneplus_archive/releases?q=CPH2749&expanded=true) |
| **CPH2745** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2745&expanded=true) |
| **CPH2747** | [EU](https://github.com/spike0en/oneplus_archive/releases?q=CPH2747_+%29_EU&expanded=true) / [GLO](https://github.com/spike0en/oneplus_archive/releases?q=CPH2747_+%29_GLO&expanded=true) |

---

### OnePlus Ace 6 — *ktm*

| Model ID    | Releases |
|-------------|-----------|
| **PLQ110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PLQ110&expanded=true) |

---

### OnePlus Pad 3 / Pad 2 Pro — *erhai*

| Model ID    | Releases |
|-------------|-----------|
| **OPD2413** | [CN](https://github.com/spike0en/oneplus_archive/releases?q=OPD2413&expanded=true) |
| **OPD2415** | [ROW](https://github.com/spike0en/oneplus_archive/releases?q=OPD2415&expanded=true) |

---

### OnePlus 13 — *dodge*

| Model ID    | Releases |
|-------------|-----------|
| **PJZ110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PJZ110&expanded=true) |
| **CPH2649** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2649&expanded=true) |
| **CPH2655** | [NA](https://github.com/spike0en/oneplus_archive/releases?q=CPH2655&expanded=true) |
| **CPH2653** | [EU](https://github.com/spike0en/oneplus_archive/releases?q=CPH2653_+%29_EU&expanded=true) / [GLO](https://github.com/spike0en/oneplus_archive/releases?q=CPH2653_+%29_GLO&expanded=true) |

---

### OnePlus 13(S/T) — *pagani*

| Model ID    | Releases |
|-------------|-----------|
| **PKX110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PKX110&expanded=true) |
| **CPH2723** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2723&expanded=true) |

---

### OnePlus 13R / Ace 5 — *giulia*

| Model ID    | Releases |
|-------------|-----------|
| **PKG110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PKG110&expanded=true) |
| **CPH2691** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2691&expanded=true) |
| **CPH2645** | [EU](https://github.com/spike0en/oneplus_archive/releases?q=CPH2645_+%29_EU&expanded=true) / [GLO](https://github.com/spike0en/oneplus_archive/releases?q=CPH2645_+%29_GLO&expanded=true) |

---

### OnePlus 12 — *waffle*

| Model ID    | Releases |
|-------------|-----------|
| **PJD110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PJD110&expanded=true) |
| **CPH2573** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2573&expanded=true) |
| **CPH2583** | [NA](https://github.com/spike0en/oneplus_archive/releases?q=CPH2583&expanded=true) |
| **CPH2581** | [EU](https://github.com/spike0en/oneplus_archive/releases?q=CPH2581_+%29_EU&expanded=true) / [GLO](https://github.com/spike0en/oneplus_archive/releases?q=CPH2581_+%29_GLO&expanded=true) |

---

### OnePlus 12R / Ace 3 — *aston*

| Model ID    | Releases |
|-------------|-----------|
| **PJE110**  | [CN](https://github.com/spike0en/oneplus_archive/releases?q=PJE110&expanded=true) |
| **CPH2585** | [IN](https://github.com/spike0en/oneplus_archive/releases?q=CPH2585&expanded=true) |
| **CPH2609** | [EU](https://github.com/spike0en/oneplus_archive/releases?q=CPH2609_+%29_EU&expanded=true) / [GLO](https://github.com/spike0en/oneplus_archive/releases?q=CPH2609_+%29_GLO&expanded=true) |

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
  <a href="https://github.com/Daniel210191"><img src="https://img.shields.io/badge/-Daniel-E91E63?style=flat-square&logo=github&logoColor=white" alt="Daniel210191"></a>
  <a href="https://github.com/yashaswee-exe"><img src="https://img.shields.io/badge/-Yashaswee-8E24AA?style=flat-square&logo=github&logoColor=white" alt="yashaswee-exe"></a>
  <a href="https://github.com/snowwolf725"><img src="https://img.shields.io/badge/-Snowwolf-607D8B?style=flat-square&logo=github&logoColor=white" alt="snowwolf725"></a>
  <a href="https://github.com/PHATWalrus"><img src="https://img.shields.io/badge/-Phatwalrus-9E9D10?style=flat-square&logo=github&logoColor=white" alt="PHATWalrus"></a>
  <a href="https://github.com/madmax7896"><img src="https://img.shields.io/badge/-Madmax-0078D7?style=flat-square&logo=github&logoColor=white" alt="madmax7896"></a>
  <a href="https://github.com/chandu078"><img src="https://img.shields.io/badge/-Chandu-FF5C57?style=flat-square&logo=github&logoColor=white" alt="chandu078"></a>
  <a href="https://github.com/HELLBOY017"><img src="https://img.shields.io/badge/-HELLBOY017-00BCD4?style=flat-square&logo=github&logoColor=white" alt="HELLBOY017"></a>
  <a href="https://github.com/gotenksIN"><img src="https://img.shields.io/badge/-Omkar-4CAF50?style=flat-square&logo=github&logoColor=white" alt="gotenksIN"></a>
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
