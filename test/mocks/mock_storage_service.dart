import 'package:student_manager/models/student.dart';
import 'package:student_manager/services/storage_service.dart';

class MockStorageService extends StorageService {
  List<Student> memory = [];

  @override
  Future<void> init() async {
    // Không cần SharedPreferences khi test
    return;
  }

  @override
  Future<List<Student>> loadStudents() async {
    return memory;
  }

  @override
  Future<void> saveStudents(List<Student> students) async {
    memory = students;
  }
}
