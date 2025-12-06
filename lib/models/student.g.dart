// GENERATED CODE - manual lightweight implementation for demo purposes

part of 'student.dart';

Student _$StudentFromJson(Map<String, dynamic> json) => Student(
      id: json['id'] as String,
      msSv: json['msSv'] as String,
      name: json['name'] as String,
      dob: json['dob'] as String,
      gender: json['gender'] as String,
      className: json['className'] as String,
      gpa: (json['gpa'] as num).toDouble(),
    );

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'id': instance.id,
      'msSv': instance.msSv,
      'name': instance.name,
      'dob': instance.dob,
      'gender': instance.gender,
      'className': instance.className,
      'gpa': instance.gpa,
    };
