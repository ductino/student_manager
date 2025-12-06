import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
  final String id;
  String msSv;
  String name;
  String dob; // ISO date string yyyy-mm-dd
  String gender;
  String className;
  double gpa;

  Student({
    required this.id,
    required this.msSv,
    required this.name,
    required this.dob,
    required this.gender,
    required this.className,
    required this.gpa,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
  Map<String, dynamic> toJson() => _$StudentToJson(this);
}
