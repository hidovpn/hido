<div align="center">

<img src="https://hido.vn/assets/icon.png" width="96" height="96" alt="Hido" />

<h1>Hido</h1>

<h3>Connect securely to your service provider</h3>

<p><strong>Sign in with your provider's code, tap once to connect. Powered by mihomo — on Android, macOS and Windows.</strong></p>

<p><strong>English</strong> · <a href="README.vi.md">Tiếng Việt</a></p>

<p>
  <a href="https://github.com/hidovpn/hido/releases/latest"><img alt="Latest release" src="https://img.shields.io/github/v/release/hidovpn/hido?style=flat-square&label=release&color=2563eb" /></a>
  <img alt="Platforms" src="https://img.shields.io/badge/platforms-Android%20%7C%20macOS%20%7C%20Windows-6366f1?style=flat-square" />
  <img alt="Core" src="https://img.shields.io/badge/core-mihomo-0ea5e9?style=flat-square" />
  <img alt="License" src="https://img.shields.io/badge/license-GPL--3.0-blue?style=flat-square" />
</p>

<p>
  <a href="https://hido.vn"><img alt="Website" src="https://img.shields.io/badge/Website-hido.vn-2563eb?style=flat-square&logo=googlechrome&logoColor=white" /></a>
  <a href="https://hido.vn/support/"><img alt="Support" src="https://img.shields.io/badge/Support-hido.vn%2Fsupport-22c55e?style=flat-square" /></a>
  <a href="https://github.com/hidovpn/hido/issues"><img alt="Issues" src="https://img.shields.io/badge/Support-Issue_Tracker-414141?style=flat-square&logo=github&logoColor=white" /></a>
</p>

<sub>Android · macOS · Windows — one app, every device.</sub>

</div>

---

## Overview

**Hido** is a VPN client that connects you to the service you already use. Enter your provider's code (for example `mosvpn`) or its domain, sign in with your provider account, and Hido loads your servers, plan and devices — no subscription links to copy, no config files to edit. Under the hood it runs **mihomo** with both **System Proxy** and full-device **TUN** modes.

> **This repository hosts RELEASES and the ISSUE TRACKER for Hido.**
> Download the official installers below. Hido does not sell VPN service itself — your account, plan and servers come from your provider.

---

## Downloads

All files are named **`Hido-<version>-<platform>-<arch>.<ext>`**. The links below point to the current stable release, **v2.0.6**:

| Platform | Format | Architecture | Download |
| :-- | :-- | :-- | :-- |
| **Android** | `.apk` | arm64-v8a (most phones) | [Hido-2.0.6-android-arm64-v8a.apk](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-android-arm64-v8a.apk) |
| **Android** | `.apk` | armeabi-v7a (older 32-bit phones) | [Hido-2.0.6-android-armeabi-v7a.apk](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-android-armeabi-v7a.apk) |
| **Android** | `.apk` | x86_64 (emulators, Chromebooks) | [Hido-2.0.6-android-x86_64.apk](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-android-x86_64.apk) |
| **macOS** | `.dmg` | Apple Silicon (M1 and later) · notarized | [Hido-2.0.6-macos-arm64.dmg](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-macos-arm64.dmg) |
| **Windows** | `.exe` installer | x64 | [Hido-2.0.6-windows-amd64-setup.exe](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-windows-amd64-setup.exe) |
| **Windows** | `.zip` portable | x64 | [Hido-2.0.6-windows-amd64.zip](https://github.com/hidovpn/hido/releases/download/v2.0.6/Hido-2.0.6-windows-amd64.zip) |

> **Not sure which Android file?** Pick **arm64-v8a** — it fits nearly every phone from the last several years.
>
> **Verify your download.** Every release ships a `SHA256SUMS` file. Only download Hido from **hido.vn** or this repository. Browse [all releases →](https://github.com/hidovpn/hido/releases) · [Changelog](CHANGELOG.md)

---

## Why Hido

- **Sign in, not set up.** A provider code and your account are all it takes.
- **Your account in the app.** Plan, expiry, data usage and devices, right next to the connect button.
- **Smart routing.** Pick your country on first launch and local sites go direct, everything else through the VPN.
- **Your provider's config stays sealed.** Server configs are stored encrypted on the device and kept out of backups.
- **Updates itself.** Android and the Windows installer download new versions from this repository and check them against `SHA256SUMS` before installing.

---

## Features

- **mihomo engine** — fast, actively maintained proxy core.
- **System Proxy mode** — routes apps that follow the system proxy.
- **TUN mode** — captures all device traffic through a virtual network interface.
- **Auto server** — picks the fastest server for you, or choose one by hand.
- **Multilingual** — English, Tiếng Việt, 中文, Русский, हिन्दी.

---

## Protocols

| | | |
|---|---|---|
| VLESS | VMess | Trojan |
| Shadowsocks | Hysteria2 | TUIC |
| WireGuard | AnyTLS | SOCKS / HTTP |

---

## Platforms

| Platform | Supported | Minimum | Distribution |
|----------|:---------:|---------|--------------|
| Android | ✅ | Android 7.0 | Direct APK (Releases) · Google Play coming soon |
| macOS | ✅ | macOS 12 Monterey, Apple Silicon | Direct DMG (Releases) |
| Windows | ✅ | Windows 10 / 11 (x64) | EXE installer or portable ZIP (Releases) |
| iOS / iPadOS | 🔜 | — | App Store coming soon |

---

## Getting Started

### Android
1. Download **`Hido-2.0.6-android-arm64-v8a.apk`** from the [Releases page](https://github.com/hidovpn/hido/releases/latest).
2. Open the file and allow **Install unknown apps** when prompted.
3. Launch Hido, enter your provider code, sign in, grant the VPN permission and tap **Connect**.

### macOS
1. Download **`Hido-2.0.6-macos-arm64.dmg`**, open it and drag **Hido** into **Applications**.
2. Launch Hido from Applications — the app is signed with Developer ID and notarized by Apple, so it opens normally.
3. Approve the network / administrator prompt when you turn on TUN mode, then connect.

### Windows
1. Download **`Hido-2.0.6-windows-amd64-setup.exe`** from the [Releases page](https://github.com/hidovpn/hido/releases/latest).
2. Run the installer. If SmartScreen appears: **More info → Run anyway**, then approve the UAC prompt.
3. Launch Hido, enter your provider code, sign in and connect.

The portable **`.zip`** runs without installing, but it cannot update itself — download new versions by hand.

### Verify checksums
**macOS**
```bash
shasum -a 256 -c SHA256SUMS --ignore-missing
```
**Windows (PowerShell)**
```powershell
Get-FileHash .\Hido-2.0.6-windows-amd64-setup.exe -Algorithm SHA256
```
Compare the result with the matching line in `SHA256SUMS`.

---

## Community & Support

- **Website:** [hido.vn](https://hido.vn) · [Providers](https://hido.vn/providers/) · [Support](https://hido.vn/support/)
- **Account, plan or payment questions:** contact your service provider.
- **Bug reports & feature requests:** open an issue on this repository's [issue tracker](https://github.com/hidovpn/hido/issues/new/choose).

When filing an issue, please include your platform, app version, provider code, connection mode and clear steps to reproduce. **Never post your password or subscription link.**

---

## License

Hido is built on [FlClash](https://github.com/chen08209/FlClash) and [mihomo](https://github.com/MetaCubeX/mihomo) and is distributed under the **GNU General Public License v3.0**. See [LICENSE](LICENSE).

The Hido name and logo are trademarks of MosVPN and are not covered by the GPL.

---

## Disclaimer

Hido is provided **"as is," without warranty of any kind**. Hido is a client application only; the VPN service is supplied by your provider. You are solely responsible for how you use the application and for complying with all applicable laws and regulations in your jurisdiction and with the terms of any network you connect to.

---

<div align="center">

**Hido — Connect securely to your service provider**

[Website](https://hido.vn) · [Support](https://hido.vn/support/) · [Privacy](https://hido.vn/privacy/) · [Terms](https://hido.vn/terms/) · [Releases](https://github.com/hidovpn/hido/releases) · [Changelog](CHANGELOG.md) · [Issues](https://github.com/hidovpn/hido/issues)

<sub>© 2026 MosVPN · Hido</sub>

</div>
