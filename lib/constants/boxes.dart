import 'package:floges_employees/models/employee/employee.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static Box<Employee> getEmployees() => Hive.box<Employee>('employees');
}

