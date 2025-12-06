📘 Student Manager

Ứng dụng mẫu cho Bài tập lớn – Quản lý Sinh viên (Simple Student Manager)

📑 Mục lục

Giới thiệu

Chức năng

Công nghệ sử dụng

Cài đặt và chạy ứng dụng

Kiểm thử tự động

Báo cáo kết quả

Hướng dẫn kiểm tra ứng dụng

📝 Giới thiệu

Student Manager là ứng dụng Flutter đa nền tảng (Mobile + Web), đáp ứng yêu cầu của bài tập lớn môn học.
Ứng dụng cho phép quản lý thông tin sinh viên với các chức năng CRUD và tìm kiếm. Ngoài ra, project được tích hợp kiểm thử tự động và CI/CD bằng GitHub Actions.

🚀 Chức năng
🔹 1. Thuộc tính sinh viên (Student Model)

Mỗi sinh viên gồm:

id — Định danh duy nhất

mssv — Mã số sinh viên

name — Họ và tên

birthday — Ngày sinh

gender — Giới tính

className — Lớp

gpa — Điểm trung bình

🔹 2. Lưu trữ & Quản lý trạng thái

Lưu trữ cục bộ: sử dụng localstore hoặc SharedPreferences để lưu dữ liệu dạng JSON, hỗ trợ chạy offline.

Quản lý trạng thái: dùng Provider.

🔹 3. Hỗ trợ nền tảng

Android

iOS

Web

🔹 4. Tích hợp CI/CD

GitHub Actions tự động chạy:

flutter test

flutter analyze

dart format --set-exit-if-changed .

🧰 Công nghệ sử dụng

Flutter & Dart – xây dựng UI và logic

Provider – State management

localstore / SharedPreferences – Lưu dữ liệu cục bộ

mocktail / mockito – Test

GitHub Actions – CI/CD workflow

⚙️ Cài đặt và chạy ứng dụng
1️⃣ Clone dự án
git clone <LINK_REPO_CỦA_BẠN>
cd student_manager

2️⃣ Cài đặt dependencies
flutter pub get

3️⃣ (Tùy chọn) Sinh code nếu dùng build_runner
flutter pub run build_runner build --delete-conflicting-outputs

4️⃣ Chạy ứng dụng
flutter run


Chạy web:

flutter run -d chrome

🧪 Kiểm thử tự động

Chạy toàn bộ test:

flutter test


Bao gồm:

Unit Test – logic Service & Provider

Widget Test – kiểm tra UI (StudentListScreen, Form, Buttons…)

Tất cả bài test phải PASS để CI xanh.

📊 Báo cáo kết quả
Thông tin sinh viên

Họ và tên: <Điền tên của bạn>

MSSV: <Điền MSSV của bạn>

Lớp: <Điền lớp của bạn>

Tự đánh giá: X/10

🏗️ Tóm tắt quá trình phát triển

Dự án được tổ chức theo kiến trúc Layered:
Model → Service → Provider → UI

Model: đại diện dữ liệu sinh viên

Service: xử lý lưu trữ bằng localstore

Provider: cung cấp CRUD và cập nhật UI theo thời gian thực

UI: gồm màn danh sách sinh viên + form thêm/sửa

✅ Kết quả kiểm thử tự động
Loại kiểm thử	Mô tả	Kết quả
Unit Test (Service)	Kiểm tra load/save dữ liệu với mock	✅ PASS
Unit Test (Provider)	Kiểm tra add, update, delete	✅ PASS
Widget Test	StudentListScreen & StudentFormScreen	✅ PASS
GitHub Actions CI	chạy analyze + test tự động	✅ PASS
🕵️ Hướng dẫn kiểm tra ứng dụng

CRUD: thêm – sửa – xóa sinh viên → UI cập nhật ngay

Lưu trữ: đóng ứng dụng → mở lại → dữ liệu còn

UI: tìm kiếm theo tên hoặc MSSV

Kiểm thử: chạy flutter test để xem trạng thái PASS
