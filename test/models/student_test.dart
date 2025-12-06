import 'package:flutter_test/flutter_test.dart';
import 'package:student_manager/models/student.dart';

void main() {
  test('Student toJson/fromJson', () {
    final s = Student(
      id: '1',
      msSv: 'SV001',
      name: 'Nguyen Van A',
      dob: '2000-01-01',
      gender: 'Male',
      className: 'CNTT',
      gpa: 3.5,
    );

    final json = s.toJson();
    final s2 = Student.fromJson(json);

    expect(s2.id, s.id);
    expect(s2.name, s.name);
    expect(s2.gpa, s.gpa);
  });
}
