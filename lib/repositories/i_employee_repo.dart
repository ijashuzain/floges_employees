import 'package:dartz/dartz.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:floges_employees/models/failures/failure.dart';

abstract class IEmployeesRepo {
  Future<Either<Failure, List<Employee>>> fetchEmployees();
}
