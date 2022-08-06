import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/repositories/i_hive_employee_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'hive_event.dart';
part 'hive_state.dart';
part 'hive_bloc.freezed.dart';

@injectable
class HiveBloc extends Bloc<HiveEvent, HiveState> {
  final IHiveEmployeesRepo _employeesRepo;

  HiveBloc(this._employeesRepo) : super(HiveState.initial()) {
    on<_AddToHive>((event, emit) {
      _employeesRepo.saveEmployee(event.employee);
    });

    on<_FetchFromHive>((event, emit) async {
      log("Hive Fetch Called");
      emit(state.copyWith(isLoading: true, employeesFailureOrSuccess: none()));
      final Either<Failure, List<Employee>> employeesOption =
          await _employeesRepo.fetchEmployees();
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

    on<_RemoveFromHive>((event, emit) async {
      emit(state.copyWith(isLoading: true, employeesFailureOrSuccess: none()));
      await _employeesRepo.deleteEmployees();
      emit(state.copyWith(
          isLoading: false, employeesFailureOrSuccess: none(), employees: []));
    });
  }
}
