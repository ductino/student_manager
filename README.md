Student Manager – Bài tập lớn Flutter
Thông tin sinh viên
•	Họ và tên: Phạm Văn Đức
•	MSSV: 2221050336
•	Lớp: DCCTCLC67A
________________________________________
1. Giới thiệu
Student Manager là ứng dụng Flutter đa nền tảng (Android, iOS, Web) được xây dựng cho bài tập lớn học phần.
Ứng dụng cho phép quản lý sinh viên theo mô hình CRUD, lưu dữ liệu cục bộ, sử dụng Provider cho quản lý trạng thái và hỗ trợ kiểm thử tự động cũng như CI/CD bằng GitHub Actions.
________________________________________
2. Mục tiêu bài tập
Bài tập giúp sinh viên:
•	Lập trình UI với Flutter & Dart
•	Áp dụng Provider để quản lý trạng thái
•	Tổ chức ứng dụng theo mô hình Model – Service – Provider – UI
•	Lưu trữ dữ liệu offline
•	Viết unit test và widget test
•	Thiết lập CI/CD bằng GitHub Actions
________________________________________
3. Chức năng của ứng dụng
3.1 CRUD sinh viên
Ứng dụng hỗ trợ đầy đủ:
•	Thêm sinh viên
•	Sửa thông tin
•	Xóa sinh viên
•	Xem danh sách sinh viên
Thông tin sinh viên gồm:
•	id – định danh duy nhất
•	mssv – mã số sinh viên
•	name – họ và tên
•	birthday – ngày sinh
•	gender – giới tính
•	className – lớp
•	gpa – điểm trung bình
________________________________________
3.2 Giao diện người dùng
Các màn hình chính:
•	Danh sách sinh viên
•	Form thêm/sửa sinh viên
Giao diện đơn giản, trực quan, dễ sử dụng.
________________________________________
3.3 Lưu trữ dữ liệu
•	Lưu cục bộ bằng localstore hoặc SharedPreferences
•	Dữ liệu được lưu dưới dạng JSON
•	Ứng dụng hoạt động offline
________________________________________
3.4 Quản lý trạng thái
•	Sử dụng Provider
•	UI tự cập nhật khi có thay đổi dữ liệu
________________________________________
4. Kiểm thử & CI/CD
Kiểm thử tự động gồm:
•	Unit Test: Service, Provider
•	Widget Test: màn hình danh sách và form
GitHub Actions tự động chạy:
•	dart format --set-exit-if-changed .
•	flutter analyze
•	flutter test
________________________________________
5. Công nghệ sử dụng
•	Flutter / Dart
•	Provider
•	localstore / SharedPreferences
•	mocktail hoặc mockito
•	flutter_test
•	GitHub Actions
________________________________________
6. Cài đặt và chạy ứng dụng
Bước 1: Clone dự án
git clone <link_repo>
cd student_manager
Bước 2: Cài dependencies
flutter pub get
Bước 3 (tùy chọn): Build code generate
flutter pub run build_runner build --delete-conflicting-outputs
Bước 4: Chạy ứng dụng
flutter run
Chạy web:
flutter run -d chrome
Bước 5: Chạy kiểm thử
flutter test
________________________________________
7. Kết quả báo cáo
7.1. Kết quả kiểm thử tự động
•	Unit Test (Service): Pass
•	Unit Test (Provider): Pass
•	Widget Test: Pass
•	GitHub Actions (analyze + test): Pass
7.2. Kiểm tra chức năng
•	CRUD hoạt động tốt
•	Tìm kiếm theo tên hoặc MSSV
•	Dữ liệu vẫn còn khi mở lại app
•	UI cập nhật theo trạng thái
________________________________________
8. Tự đánh giá
10/10

