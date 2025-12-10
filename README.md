Student Manager – Bài tập lớn Flutter<br>
Thông tin sinh viên<br>
Họ và tên: Phạm Văn Đức<br>
MSSV: 2221050336<br>
Lớp: DCCTCLC67A<br>

1. Giới thiệu<br>
Student Manager là ứng dụng Flutter đa nền tảng (Android, iOS, Web) được xây dựng nhằm đáp ứng yêu cầu bài tập lớn của học phần.<br>
Ứng dụng hỗ trợ CRUD sinh viên, lưu trữ cục bộ, quản lý trạng thái bằng Provider và tích hợp kiểm thử tự động – CI/CD bằng GitHub Actions.<br>

2. Mục tiêu bài tập<br>
• Lập trình UI với Flutter & Dart.<br>
• Áp dụng Provider để quản lý trạng thái.<br>
• Tổ chức dự án theo mô hình Model – Service – Provider – UI.<br>
• Lưu trữ dữ liệu offline bằng Localstore/SharedPreferences.<br>
• Viết unit test và widget test.<br>
• Thiết lập CI/CD GitHub Actions.<br>

3. Chức năng của ứng dụng<br>
3.1 CRUD sinh viên<br>
Ứng dụng cung cấp đầy đủ chức năng:<br>
• Thêm sinh viên<br>
• Sửa thông tin<br>
• Xóa sinh viên<br>
• Xem danh sách<br>
Thuộc tính sinh viên:<br>
• id – định danh duy nhất<br>
• mssv – mã số sinh viên<br>
• name – họ tên<br>
• birthday – ngày sinh<br>
• gender – giới tính<br>
• className – lớp<br>
• gpa – điểm trung bình<br>
3.2 Giao diện người dùng<br>
Gồm 2 màn hình chính:<br>
• Danh sách sinh viên<br>
• Form thêm/sửa sinh viên<br>
Giao diện đơn giản, trực quan, dễ thao tác.<br>
3.3 Lưu trữ dữ liệu<br>
• Lưu cục bộ bằng localstore hoặc SharedPreferences<br>
• Dữ liệu ở dạng JSON<br>
• Hỗ trợ chạy offline<br>
3.4 Quản lý trạng thái<br>
• Sử dụng Provider<br>
• UI cập nhật ngay khi dữ liệu thay đổi<br>

4. Kiểm thử & CI/CD<br>
Kiểm thử tự động<br>
• Unit Test: Service, Provider<br>
• Widget Test: danh sách + form<br>
GitHub Actions tự động chạy:<br>
• dart format --set-exit-if-changed .<br>
• flutter analyze<br>
• flutter test<br>

5. Công nghệ sử dụng<br>
• Flutter / Dart<br>
• Provider<br>
• localstore<br>
• Mock Storage Service<br>
• flutter_test<br>
• GitHub Actions<br>

6. Cài đặt & chạy ứng dụng<br>
1. Clone dự án<br>
git clone <link_repo>
cd student_manager
<br> 
2. Cài dependencies<br>
flutter pub get
<br> 
3. (Tùy chọn) Generate code<br>
flutter pub run build_runner build --delete-conflicting-outputs
<br> 
4. Chạy ứng dụng<br>
flutter run
Chạy trên web:<br>
flutter run -d chrome
<br> 
5. Chạy kiểm thử<br>
flutter test
<br> 

7. Kết quả báo cáo<br>
7.1 Kết quả kiểm thử tự động<br>
• Unit Test (Service): PASS<br>
• Unit Test (Provider): PASS<br>
• Widget Test: PASS<br>
• GitHub Actions CI: PASS<br>
7.2 Kiểm tra chức năng<br>
• CRUD đầy đủ<br>
• Tìm kiếm theo tên hoặc MSSV<br>
• Dữ liệu vẫn giữ sau khi mở lại app<br>
• UI cập nhật theo thời gian thực<br>

8. Tự đánh giá<br>
10/10<br>

