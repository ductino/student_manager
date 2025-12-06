import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/student.dart';
import '../services/storage_service.dart';

class StudentProvider with ChangeNotifier {
  final StorageService _service;
  final Uuid _uuid = const Uuid();

  List<Student> _students = [];
  List<Student> get students => List.unmodifiable(_students);

  StudentProvider(this._service) {
    load();
  }

  Future<void> load() async {
    _students = await _service.loadStudents();
    notifyListeners();
  }

  Future<void> addStudent({
    required String msSv,
    required String name,
    required String dob,
    required String gender,
    required String className,
    required double gpa,
  }) async {
    final s = Student(
      id: _uuid.v4(),
      msSv: msSv,
      name: name,
      dob: dob,
      gender: gender,
      className: className,
      gpa: gpa,
    );

    _students.insert(0, s);
    await _service.saveStudents(_students);
    notifyListeners();
  }

  Future<void> updateStudent(Student s) async {
    final index = _students.indexWhere((e) => e.id == s.id);
    if (index != -1) {
      _students[index] = s;
      await _service.saveStudents(_students);
      notifyListeners();
    }
  }

  Future<void> deleteStudent(String id) async {
    _students.removeWhere((e) => e.id == id);
    await _service.saveStudents(_students);
    notifyListeners();
  }
}
