import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'employee.freezed.dart';
part 'employee.g.dart';

@HiveType(typeId: 0)
@freezed
class Employee with _$Employee{
  const factory Employee({

    @HiveField(0)
    required int id,

    @HiveField(1)
    @JsonKey(name: "first_name") required String? firstName,

    @HiveField(2)
    @JsonKey(name: "last_name") required String? lastName,

    @HiveField(3)
    required String? email,

    @HiveField(4)
    required String? avatar,

  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}