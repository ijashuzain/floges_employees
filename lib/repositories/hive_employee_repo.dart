import 'dart:developer';

import 'package:floges_employees/constants/boxes.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/repositories/i_hive_employee_repo.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHiveEmployeesRepo)
class HiveEmployeeRepo implements IHiveEmployeesRepo {
  @override
  Future<bool> deleteEmployees() async {
    try {
      Hive.box<Employee>('employees').clear();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, List<Employee>>> fetchEmployees() async {
    try {
      final box = Boxes.getEmployees();
      List<Employee> employees = box.values.toList();
      log(employees.toString());
      return Right(employees);
    } catch (e) {
      return const Left(Failure.server());
    }
  }

  @override
  Future<bool> saveEmployee(Employee employee) async {
    try {
      final box = Boxes.getEmployees();
      box.add(employee);
      return true;
    } catch (e) {
      return false;
    }
  }
}
