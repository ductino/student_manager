📘 Student Manager

Ứng dụng mẫu cho Bài tập lớn – Quản lý Sinh viên (Simple Student Manager)

🚀 Chức năng
1. Quản lý sinh viên

Thêm – Sửa – Xóa – Tìm kiếm

Thuộc tính sinh viên:

id

mssv

name

birthday

gender

className

gpa

2. Lưu trữ & Trạng thái

Lưu dữ liệu cục bộ bằng localstore hoặc SharedPreferences

Quản lý trạng thái bằng Provider

Hỗ trợ offline

3. Hỗ trợ nền tảng

Android

iOS

Web

4. CI/CD (GitHub Actions)

Tự động chạy khi push:

dart format --set-exit-if-changed .

flutter analyze

flutter test

🧰 Công nghệ sử dụng

Flutter / Dart

Provider

localstore / SharedPreferences

mocktail / mockito

GitHub Actions

⚙️ Cài đặt
1️⃣ Clone dự án
git clone <LINK_REPO_CỦA_BẠN>
cd student_manager

2️⃣ Cài đặt dependencies
flutter pub get

3️⃣ (Tùy chọn) Build code tạo sẵn
flutter pub run build_runner build --delete-conflicting-outputs

4️⃣ Chạy ứng dụng
flutter run


Chạy web:

flutter run -d chrome

🧪 Kiểm thử tự động

Chạy toàn bộ test:

flutter test


Bao gồm:

Unit Test (Service + Provider)

Widget Test (List screen, Form screen)

Mock Service (mocktail)

📊 Kết quả kiểm thử tự động
Loại kiểm thử	Mô tả	Kết quả
Unit Test (Service)	load/save dữ liệu với mock	✅ PASS
Unit Test (Provider)	add, update, delete	✅ PASS
Widget Test	UI: StudentListScreen + Form	✅ PASS
CI qua GitHub Actions	analyze + test	✅ PASS
🕵️ Hướng dẫn tự kiểm tra

Thêm – sửa – xóa sinh viên → UI cập nhật tức thì

Đóng app → mở lại → dữ liệu còn

Tìm kiếm theo tên hoặc MSSV

Chạy flutter test để xem trạng thái PASS

👤 Thông tin sinh viên (điền vào báo cáo)

Họ và tên: …

MSSV: …

Lớp: …

Tự đánh giá: … /10
