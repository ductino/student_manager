# Student Manager 

Ứng dụng mẫu cho Bài tập lớn - Quản lý sinh viên (Simple Student Manager)

## Chức năng
Quản lý sinh viên: Thêm – Sửa – Xóa – Tìm kiếm
Thuộc tính sinh viên:
MSSV
Họ tên
Ngày sinh
Giới tính
Lớp
GPA
Lưu dữ liệu cục bộ với Localstore (tự động tạo file JSON trong bộ nhớ ứng dụng / trình duyệt)
Quản lý trạng thái bằng Provider
Hỗ trợ chạy web, mobile
- GitHub Actions CI để chạy `flutter test` và `flutter analyze`

## Cài đặt
1. Clone repo
```
git clone <repo>
```
2. Cài dependencies
```
flutter pub get
```
3. Sinh code (nếu muốn json_serializable)
```
flutter pub run build_runner build --delete-conflicting-outputs
```
4. Chạy ứng dụng
```
flutter run
```
5. Chạy test
```
flutter test
```