import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/repositories/i_employee_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final IEmployeesRepo _employeesRepo;

  EmployeeBloc(this._employeesRepo) : super(EmployeeState.initial()) {
    on<_FetchEmployees>((event, emit) async {
      emit(state.copyWith(isLoading: true, employeesFailureOrSuccess: none()));
      final Either<Failure, List<Employee>> employeesOption =
          await _employeesRepo.fetchEmployees();
      log(employeesOption.toString());
      emit(employeesOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          employeesFailureOrSuccess: some(left(failure)),
        ),
        (employees) => state.copyWith(
          isLoading: false,
          employees: employees,
          employeesFailureOrSuccess: some(right(employees)),
        ),
      ));
    });
  }
}
