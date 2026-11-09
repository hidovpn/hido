# Lịch sử phiên bản

Định dạng theo [Keep a Changelog](https://keepachangelog.com/vi/1.1.0/), đánh số theo [SemVer](https://semver.org/lang/vi/).

## [2.0.6] - 2026-11-09
### Mới
- Trang **Kiểm tra mở khoá** làm lại: hai nhóm Dịch vụ quốc tế (Netflix, YouTube Premium, TikTok) và Dịch vụ AI (ChatGPT, Google Gemini, Claude), nút "Kiểm tra ngay", hiện vùng mở khoá của từng dịch vụ.
- Trang **Tài khoản** mới: trên máy tính dạng bảng (gói, hạn dùng, dung lượng có thanh tiến độ, các thao tác dạng ô); trên điện thoại một thẻ dung lượng lớn kèm số ngày còn lại. Gói không giới hạn hiện "∞".
- Biểu tượng Đăng xuất / Xoá tài khoản đúng nghĩa (trước đây Đăng xuất là thùng rác).

### Bảo mật
- Link đăng ký và phiên đăng nhập nhà cung cấp được mã hoá trên máy (thêm vào cấu hình máy chủ đã mã hoá từ 2.0.5).
- macOS: lõi kết nối chỉ chạy cho đúng ứng dụng Hido có chữ ký; mã của lõi được làm rối trên bản phát hành máy tính.

### Sửa lỗi
- Máy tính: nhớ đúng chế độ (mã nhà cung cấp / không cần mã) sau khi mở lại app.
- Tên nhà cung cấp và tên gói dài không còn bị cắt mất trên điện thoại.

## [2.0.5] - 2026-11-09
### Phát hành đầu tiên trên GitHub
- Android `.apk` theo từng kiến trúc: arm64-v8a, armeabi-v7a, x86_64 (Android 7.0+).
- macOS `.dmg` cho Apple Silicon (macOS 12+), ký Developer ID và đã được Apple công chứng (notarize).
- Windows x64: bộ cài `.exe` và bản portable `.zip`.
- Đăng nhập bằng mã nhà cung cấp (ví dụ `mosvpn`) hoặc tên miền của nhà cung cấp.
- Tài khoản nhà cung cấp ngay trong app: gói, hạn dùng, lưu lượng, quản lý thiết bị.
- Lần mở đầu chọn ngôn ngữ, giao diện, quốc gia — mặc định đi thẳng (không qua VPN) với trang trong nước.
- Cấu hình máy chủ của nhà cung cấp được mã hoá trên máy; Android không cho sao lưu dữ liệu app.
- Chế độ System Proxy và TUN, tự chọn máy chủ nhanh nhất.
- Tự cập nhật trong app (Android, Windows bản cài) có kiểm tra SHA-256.

[2.0.6]: https://github.com/hidovpn/hido/releases/tag/v2.0.6
[2.0.5]: https://github.com/hidovpn/hido/releases/tag/v2.0.5
