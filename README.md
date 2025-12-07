Bài tập lớn – Ứng dụng Student Manager (Flutter)
Thông tin sinh viên

Họ và tên: Phạm Văn Đức

MSSV: 2221050336

Lớp: DCCTCLC67A

1. Giới thiệu

Student Manager là ứng dụng Flutter đa nền tảng (Mobile + Web) được xây dựng nhằm đáp ứng yêu cầu bài tập lớn của học phần.
Ứng dụng hỗ trợ quản lý sinh viên theo mô hình CRUD, lưu trữ dữ liệu cục bộ, quản lý trạng thái bằng Provider, có kiểm thử tự động và CI/CD bằng GitHub Actions.

2. Mục tiêu bài tập

Sinh viên hoàn thành bài tập lớn nhằm:

Thực hành lập trình giao diện với Flutter & Dart.

Hiểu và áp dụng quản lý trạng thái (Provider).

Thiết kế kiến trúc Model – Service – Provider.

Lưu trữ dữ liệu với Localstore / SharedPreferences.

Viết unit test, widget test.

Thiết lập CI/CD GitHub Actions chạy kiểm thử tự động.

3. Yêu cầu & Chức năng ứng dụng
3.1. CRUD Sinh viên

Ứng dụng hỗ trợ đầy đủ:

Thêm sinh viên

Xem chi tiết

Sửa thông tin

Xóa sinh viên

Thuộc tính mỗi sinh viên:
Thuộc tính	Mô tả
id	Định danh duy nhất
mssv	Mã số sinh viên
name	Họ và tên
birthday	Ngày sinh
gender	Giới tính
className	Lớp
gpa	Điểm trung bình

Model được viết bằng Dart.

3.2. Giao diện người dùng

Giao diện đơn giản, trực quan và dễ sử dụng, gồm:

Danh sách sinh viên

Form thêm/sửa sinh viên

3.3. Lưu trữ dữ liệu

Ứng dụng sử dụng:

localstore để lưu JSON cục bộ

Chạy hoàn toàn offline

Service chịu trách nhiệm load/save dữ liệu

3.4. Quản lý trạng thái

Sử dụng Provider

UI tự động cập nhật khi thêm – sửa – xóa

3.5. Kiểm thử tự động & CI/CD
Viết test:

Unit Test: Service & Provider

Widget Test: Màn hình danh sách + form

GitHub Actions chạy tự động:

dart format --set-exit-if-changed .

flutter analyze

flutter test

4. Công nghệ sử dụng
Công nghệ	Mục đích
Flutter / Dart	Xây dựng ứng dụng
Provider	Quản lý trạng thái
localstore / SharedPreferences	Lưu dữ liệu offline
mocktail / mockito	Mock để kiểm thử
flutter_test	Framework test
GitHub Actions	CI/CD
5. Cài đặt & Chạy ứng dụng
1. Tải mã nguồn
git clone <link_repo>
cd student_manager

2. Cài dependencies
flutter pub get

3. (Tùy chọn) Generate code
flutter pub run build_runner build --delete-conflicting-outputs

4. Chạy ứng dụng
flutter run


Chạy web:

flutter run -d chrome

5. Chạy kiểm thử
flutter test

6. Kết quả báo cáo
6.1. Kết quả kiểm thử tự động
Loại kiểm thử	Mô tả	Kết quả
Unit Test (Service)	Kiểm tra load/save bằng mock	✓
Unit Test (Provider)	Kiểm tra add/update/delete	✓
Widget Test	Danh sách + Form	✓
GitHub Actions	analyze + test	✓
6.2. Kiểm tra chức năng trong ứng dụng

Chức năng CRUD đầy đủ

Tìm kiếm theo tên hoặc MSSV

Dữ liệu không bị mất khi mở lại ứng dụng

UI cập nhật ngay khi thao tác

7. Tự đánh giá

10/10
Sinh viên tự đánh giá theo tiêu chí của giảng viên.
