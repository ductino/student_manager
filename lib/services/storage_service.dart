import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/student.dart';

class StorageService {
  static const _key = 'students_v1';
  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<List<Student>> loadStudents() async {
    final jsonStr = _prefs?.getString(_key);
    if (jsonStr == null || jsonStr.isEmpty) return [];
    final list = jsonDecode(jsonStr) as List<dynamic>;
    return list.map((e) => Student.fromJson(Map<String, dynamic>.from(e))).toList();
  }

  Future<void> saveStudents(List<Student> students) async {
    final list = students.map((e) => e.toJson()).toList();
    await _prefs?.setString(_key, jsonEncode(list));
  }
}
