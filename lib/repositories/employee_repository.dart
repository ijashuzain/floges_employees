import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:floges_employees/constants/api.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/repositories/i_employee_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmployeesRepo)
class EmployeeRepository implements IEmployeesRepo {
  @override
  Future<Either<Failure, List<Employee>>> fetchEmployees() async {
    try {
      final response =
          await Dio(BaseOptions()).get("https://reqres.in/api/users?page=1");
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Employee> employees = [];
        for (var employee in response.data['data']) {
          employees.add(Employee.fromJson(employee));
        }
        return Right(employees);
      } else {
        return left(const Failure.server());
      }
    } catch (e) {
      log(e.toString());
      return left(const Failure.client());
    }
  }
}
