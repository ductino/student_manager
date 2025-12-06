Bài tập lớn – Ứng dụng Student Manager với Flutter
Thông tin sinh viên

Họ và tên:__________________

MSSV: __________________

Lớp: __________________

Giới thiệu

Student Manager là ứng dụng Flutter đa nền tảng (Mobile + Web) được xây dựng nhằm đáp ứng yêu cầu bài tập lớn của học phần.
Ứng dụng cho phép quản lý thông tin sinh viên theo mô hình CRUD, lưu trữ dữ liệu cục bộ, sử dụng Provider để quản lý trạng thái và tích hợp kiểm thử tự động cùng CI/CD bằng GitHub Actions.

Mục tiêu

Bài tập lớn nhằm giúp sinh viên:

Thực hành lập trình UI với Flutter & Dart.

Hiểu và áp dụng quản lý trạng thái (Provider).

Tổ chức dữ liệu với Model – Service – Provider.

Lưu trữ dữ liệu bằng Localstore/SharedPreferences.

Viết kiểm thử tự động (unit test, widget test).

Thiết lập CI/CD với GitHub Actions.

Yêu cầu ứng dụng
1. Chức năng CRUD sinh viên

Ứng dụng cung cấp đầy đủ CRUD: tạo – xem – sửa – xóa sinh viên.
Mỗi sinh viên có các thuộc tính:

id – định danh duy nhất

mssv – mã số sinh viên

name – họ và tên

birthday – ngày sinh

gender – giới tính

className – lớp

gpa – điểm trung bình

Model được tạo bằng Dart (có thể dùng extension hỗ trợ data class generator).

2. Giao diện người dùng

Giao diện đơn giản, trực quan, dễ sử dụng.

Các màn hình chính:

Danh sách sinh viên

Form thêm/sửa sinh viên

Chi tiết sinh viên (tùy chọn)

3. Lưu trữ

Ứng dụng sử dụng:

localstore hoặc SharedPreferences để lưu dữ liệu dạng JSON

Hỗ trợ chạy offline

Service chịu trách nhiệm load/save dữ liệu

4. Quản lý trạng thái

Sử dụng Provider

Hỗ trợ cập nhật UI theo thời gian thực khi thêm, sửa, xóa

5. Kiểm thử tự động & CI/CD

Viết unit test cho Service và Provider

Viết widget test cho StudentListScreen và StudentFormScreen

Thiết lập GitHub Actions để tự động chạy:

dart format --set-exit-if-changed .

flutter analyze

flutter test

Công nghệ và thư viện sử dụng

Flutter / Dart – xây dựng ứng dụng

Provider – quản lý trạng thái

localstore hoặc SharedPreferences – lưu dữ liệu offline

mocktail / mockito – tạo mock object để test

flutter_test – framework kiểm thử

GitHub Actions – CI/CD

Cài đặt & chạy ứng dụng
1. Tải mã nguồn
git clone <link_repo>
cd student_manager

2. Cài dependencies
flutter pub get

3. (Tùy chọn) Build code nếu dùng build_runner
flutter pub run build_runner build --delete-conflicting-outputs

4. Chạy ứng dụng
flutter run


Chạy web:

flutter run -d chrome

5. Chạy kiểm thử
flutter test

Báo cáo kết quả
1. Kết quả kiểm thử tự động
Loại kiểm thử	Mô tả	Kết quả
Unit Test (Service)	Kiểm tra load/save dữ liệu bằng mock	✅ PASS
Unit Test (Provider)	Kiểm tra add, update, delete	
Widget Test	Form + danh sách sinh viên	
CI/CD GitHub Actions	analyze + test	
2. Kiểm tra chức năng trong ứng dụng

CRUD đầy đủ

Tìm kiếm theo tên hoặc MSSV

Dữ liệu vẫn còn khi mở lại app

UI cập nhật ngay khi thao tác

Yêu cầu nộp bài

Toàn bộ source code trên GitHub

File workflow trong .github/workflows/ci.yml

Video demo kiểm thử + demo CRUD

Báo cáo kết quả ngay trong README.md

Kiểm thử tự động phải chạy thành công (hoặc demo chạy trên máy nếu GitHub Actions bị hạn chế)

Tự đánh giá

X/10
Sinh viên tự đánh giá theo tiêu chí của giảng viên.
