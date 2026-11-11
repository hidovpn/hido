<div align="center">

<img src="https://hido.vn/assets/icon.png" width="96" height="96" alt="Hido" />

<h1>Hido</h1>

<h3>Kết nối an toàn tới nhà cung cấp dịch vụ của bạn</h3>

<p><strong>Đăng nhập bằng mã nhà cung cấp, chạm một lần là kết nối. Chạy nhân mihomo — trên Android, macOS và Windows.</strong></p>

<p><a href="README.md">English</a> · <strong>Tiếng Việt</strong></p>

<p>
  <a href="https://github.com/hidovpn/hido/releases/latest"><img alt="Bản mới nhất" src="https://img.shields.io/github/v/release/hidovpn/hido?style=flat-square&label=release&color=2563eb" /></a>
  <img alt="Nền tảng" src="https://img.shields.io/badge/platforms-Android%20%7C%20macOS%20%7C%20Windows-6366f1?style=flat-square" />
  <img alt="Nhân" src="https://img.shields.io/badge/core-mihomo-0ea5e9?style=flat-square" />
  <img alt="Giấy phép" src="https://img.shields.io/badge/license-GPL--3.0-blue?style=flat-square" />
</p>

<p>
  <a href="https://hido.vn/vi/"><img alt="Website" src="https://img.shields.io/badge/Website-hido.vn-2563eb?style=flat-square&logo=googlechrome&logoColor=white" /></a>
  <a href="https://hido.vn/vi/support/"><img alt="Hỗ trợ" src="https://img.shields.io/badge/H%E1%BB%97_tr%E1%BB%A3-hido.vn%2Fsupport-22c55e?style=flat-square" /></a>
  <a href="https://github.com/hidovpn/hido/issues"><img alt="Báo lỗi" src="https://img.shields.io/badge/B%C3%A1o_l%E1%BB%97i-Issue_Tracker-414141?style=flat-square&logo=github&logoColor=white" /></a>
</p>

<sub>Android · macOS · Windows — một ứng dụng, mọi thiết bị.</sub>

</div>

---

## Giới thiệu

**Hido** là ứng dụng VPN kết nối bạn tới dịch vụ bạn đang dùng. Nhập mã nhà cung cấp (ví dụ `mosvpn`) hoặc tên miền của họ, đăng nhập tài khoản, Hido tự tải máy chủ, gói cước và danh sách thiết bị — không phải chép link đăng ký, không phải sửa file cấu hình. Bên trong là nhân **mihomo**, có cả chế độ **System Proxy** và **TUN** cho toàn bộ thiết bị.

> **Repo này chứa BẢN PHÁT HÀNH và nơi BÁO LỖI của Hido.**
> Tải bộ cài chính thức ở bên dưới. Hido không tự bán dịch vụ VPN — tài khoản, gói cước và máy chủ do nhà cung cấp của bạn cấp.

---

## Tải về

> **Dùng Android?** Cách dễ nhất là cài từ **[Google Play](https://play.google.com/store/apps/details?id=com.hido.vpn)** — app tự cập nhật, không phải tải lại file. Muốn bản APK trực tiếp thì lấy ở bảng dưới.

Mọi file đặt tên **`Hido-<phiên bản>-<nền tảng>-<kiến trúc>.<đuôi>`**. Link dưới đây là bản ổn định hiện tại, **v2.0.8**:

| Nền tảng | Định dạng | Kiến trúc | Tải về |
| :-- | :-- | :-- | :-- |
| **Android** | `.apk` | arm64-v8a (hầu hết điện thoại) | [Hido-2.0.8-android-arm64-v8a.apk](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-android-arm64-v8a.apk) |
| **Android** | `.apk` | armeabi-v7a (máy 32-bit đời cũ) | [Hido-2.0.8-android-armeabi-v7a.apk](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-android-armeabi-v7a.apk) |
| **Android** | `.apk` | x86_64 (giả lập, Chromebook) | [Hido-2.0.8-android-x86_64.apk](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-android-x86_64.apk) |
| **macOS** | `.dmg` | Apple Silicon (M1 trở lên) · đã notarize | [Hido-2.0.8-macos-arm64.dmg](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-macos-arm64.dmg) |
| **Windows** | bộ cài `.exe` | x64 | [Hido-2.0.8-windows-amd64-setup.exe](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-windows-amd64-setup.exe) |
| **Windows** | `.zip` không cần cài | x64 | [Hido-2.0.8-windows-amd64.zip](https://github.com/hidovpn/hido/releases/download/v2.0.8/Hido-2.0.8-windows-amd64.zip) |

> **Không biết chọn file Android nào?** Chọn **arm64-v8a** — hợp với gần như mọi điện thoại vài năm trở lại đây.
>
> **Kiểm tra file tải về.** Mỗi bản phát hành có file `SHA256SUMS`. Chỉ tải Hido từ **hido.vn** hoặc repo này. Xem [tất cả bản phát hành →](https://github.com/hidovpn/hido/releases) · [Lịch sử phiên bản](CHANGELOG.md)

---

## Vì sao chọn Hido

- **Đăng nhập là dùng.** Chỉ cần mã nhà cung cấp và tài khoản của bạn.
- **Tài khoản ngay trong app.** Gói, hạn dùng, lưu lượng và thiết bị nằm cạnh nút kết nối.
- **Định tuyến thông minh.** Chọn quốc gia lúc mở app lần đầu: trang trong nước đi thẳng, còn lại đi qua VPN.
- **Cấu hình được niêm phong.** Cấu hình máy chủ của nhà cung cấp được mã hoá trên máy và không nằm trong bản sao lưu.
- **Tự cập nhật.** Android và bản cài Windows tự tải phiên bản mới từ repo này và đối chiếu `SHA256SUMS` trước khi cài.

---

## Tính năng

- **Nhân mihomo** — nhanh, được cập nhật thường xuyên.
- **Chế độ System Proxy** — cho các ứng dụng dùng proxy hệ thống.
- **Chế độ TUN** — bắt toàn bộ lưu lượng của máy qua card mạng ảo.
- **Tự chọn máy chủ** — chọn máy nhanh nhất, hoặc tự chọn bằng tay.
- **Đa ngôn ngữ** — English, Tiếng Việt, 中文, Русский, हिन्दी.

---

## Giao thức

| | | |
|---|---|---|
| VLESS | VMess | Trojan |
| Shadowsocks | Hysteria2 | TUIC |
| WireGuard | AnyTLS | SOCKS / HTTP |

---

## Nền tảng

| Nền tảng | Hỗ trợ | Tối thiểu | Phân phối |
|----------|:------:|-----------|-----------|
| Android | ✅ | Android 7.0 | [Google Play](https://play.google.com/store/apps/details?id=com.hido.vpn) · APK trực tiếp (Releases) |
| macOS | ✅ | macOS 12 Monterey, Apple Silicon | DMG trực tiếp (Releases) |
| Windows | ✅ | Windows 10 / 11 (x64) | Bộ cài EXE hoặc ZIP (Releases) |
| iOS / iPadOS | 🔜 | — | Sắp có trên App Store |

---

## Hướng dẫn cài đặt

### Android
1. Tải **`Hido-2.0.8-android-arm64-v8a.apk`** ở [trang Releases](https://github.com/hidovpn/hido/releases/latest).
2. Mở file, cho phép **Cài ứng dụng không rõ nguồn gốc** khi được hỏi.
3. Mở Hido, nhập mã nhà cung cấp, đăng nhập, cấp quyền VPN rồi bấm **Kết nối**.

### macOS
1. Tải **`Hido-2.0.8-macos-arm64.dmg`**, mở ra và kéo **Hido** vào **Applications**.
2. Mở Hido trong Applications — app đã ký Developer ID và được Apple công chứng (notarize) nên mở bình thường.
3. Đồng ý khi được hỏi quyền mạng / quản trị lúc bật TUN, rồi kết nối.

### Windows
1. Tải **`Hido-2.0.8-windows-amd64-setup.exe`** ở [trang Releases](https://github.com/hidovpn/hido/releases/latest).
2. Chạy bộ cài. Nếu SmartScreen hiện: **Thông tin thêm → Vẫn chạy**, rồi đồng ý UAC.
3. Mở Hido, nhập mã nhà cung cấp, đăng nhập và kết nối.

Bản **`.zip`** chạy không cần cài nhưng không tự cập nhật được — phiên bản mới phải tải tay.

### Kiểm tra SHA-256
**macOS**
```bash
shasum -a 256 -c SHA256SUMS --ignore-missing
```
**Windows (PowerShell)**
```powershell
Get-FileHash .\Hido-2.0.8-windows-amd64-setup.exe -Algorithm SHA256
```
So kết quả với dòng tương ứng trong `SHA256SUMS`.

---

## Cộng đồng & Hỗ trợ

- **Website:** [hido.vn](https://hido.vn/vi/) · [Nhà cung cấp](https://hido.vn/vi/providers/) · [Hỗ trợ](https://hido.vn/vi/support/)
- **Hỏi về tài khoản, gói cước, thanh toán:** liên hệ nhà cung cấp dịch vụ của bạn.
- **Báo lỗi & đề xuất tính năng:** mở issue ở [trang báo lỗi](https://github.com/hidovpn/hido/issues/new/choose) của repo này.

Khi báo lỗi, ghi rõ nền tảng, phiên bản app, mã nhà cung cấp, chế độ kết nối và các bước để gặp lỗi. **Không bao giờ dán mật khẩu hay link đăng ký.**

---

## Giấy phép

Hido được xây dựng trên [FlClash](https://github.com/chen08209/FlClash) và [mihomo](https://github.com/MetaCubeX/mihomo), phát hành theo **GNU General Public License v3.0**. Xem [LICENSE](LICENSE).

Tên và logo Hido là nhãn hiệu của MosVPN, không thuộc phạm vi GPL.

---

## Miễn trừ trách nhiệm

Hido được cung cấp **"nguyên trạng", không kèm bất kỳ bảo đảm nào**. Hido chỉ là ứng dụng khách; dịch vụ VPN do nhà cung cấp của bạn cung cấp. Bạn tự chịu trách nhiệm về cách sử dụng ứng dụng và việc tuân thủ pháp luật nơi bạn sinh sống cũng như điều khoản của mạng bạn kết nối.

---

<div align="center">

**Hido — Kết nối an toàn tới nhà cung cấp dịch vụ của bạn**

[Website](https://hido.vn/vi/) · [Hỗ trợ](https://hido.vn/vi/support/) · [Quyền riêng tư](https://hido.vn/vi/privacy/) · [Điều khoản](https://hido.vn/vi/terms/) · [Releases](https://github.com/hidovpn/hido/releases) · [Lịch sử phiên bản](CHANGELOG.md) · [Báo lỗi](https://github.com/hidovpn/hido/issues)

<sub>© 2026 MosVPN · Hido</sub>

</div>
