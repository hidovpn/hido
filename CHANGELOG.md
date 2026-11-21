# Lịch sử phiên bản

Định dạng theo [Keep a Changelog](https://keepachangelog.com/vi/1.1.0/), đánh số theo [SemVer](https://semver.org/lang/vi/).

## [2.0.9] - 2026-11-22
### Sửa lỗi / Fixes
- Cập nhật đăng ký không còn xoá danh sách máy chủ: khi nhà cung cấp trả về nội dung rỗng hoặc không có máy chủ nào, app giữ máy chủ đang dùng và thử lại lần sau (an empty or server-less update no longer wipes your servers).
- Khi lõi kết nối dừng bất ngờ, nút kết nối báo "Lõi đã dừng" kèm lý do; bấm để khởi động lại và nối lại. Proxy hệ thống được gỡ ngay, máy không mất mạng.
- Android: báo rõ lý do khi VPN không bật được (chưa cấp quyền VPN, hoặc một ứng dụng khác đang đặt làm VPN luôn bật); bảo vệ các kết nối mở trước lúc VPN lên xong.
- Windows: bộ cài chỉ dừng các tiến trình Hido trong thư mục cài.
- Cổng proxy bị đặt về 0 được tự đổi sang cổng dùng được và báo cho bạn; cổng proxy mở được cả khi chưa có cấu hình.
- Bản cập nhật thiếu file cho máy bạn: app mở trang tải về thay vì báo lỗi.
- Bộ chứng chỉ gốc được nhúng lại vào lõi trên mọi nền tảng.
- Ứng dụng tự sửa khi đồng hồ máy bị chỉnh lùi, không còn lỗi lúc thêm cấu hình.

## [2.0.8] - 2026-11-11
### Sửa lỗi / Fixes
- macOS, Windows: nếu app bị tắt ngang lúc đang kết nối, máy có thể mất mạng vì proxy hệ thống còn trỏ vào Hido. Nay mở lại app sẽ tự gỡ proxy đó; proxy của phần mềm khác không bị đụng tới (a killed run no longer leaves the system proxy pointing at Hido).
- Android: báo rõ khi máy không có hộp thoại cấp quyền VPN, thay vì im lặng không kết nối.

### Mới / New
- Android TV: cài được từ file `.apk`, dùng hoàn toàn bằng điều khiển (remote), bố cục tự co giãn theo màn hình TV, đường link hiện dạng mã QR để quét bằng điện thoại.

## [2.0.7] - 2026-11-09
### Sửa lỗi / Fixes
- Khi đang kết nối, các yêu cầu tới tài khoản nhà cung cấp, tra mã nhà cung cấp và cập nhật đăng ký đi thẳng, không qua máy chủ VPN (account and registry calls go direct while connected): trang Tài khoản, nút Làm mới và Cập nhật chạy được cả ở chế độ Thông minh lẫn Toàn bộ, và nhà cung cấp thấy đúng IP của máy.
- Cổng đi thẳng chỉ nghe trên máy (127.0.0.1) và yêu cầu mật khẩu riêng, được mã hoá trên máy.

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

[2.0.9]: https://github.com/hidovpn/hido/releases/tag/v2.0.9
[2.0.8]: https://github.com/hidovpn/hido/releases/tag/v2.0.8
[2.0.7]: https://github.com/hidovpn/hido/releases/tag/v2.0.7
[2.0.6]: https://github.com/hidovpn/hido/releases/tag/v2.0.6
[2.0.5]: https://github.com/hidovpn/hido/releases/tag/v2.0.5
