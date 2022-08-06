part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState({
    required Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
    required bool isLoading,
    required List<Employee> employees,
  }) = _EmployeeState;

  factory EmployeeState.initial() => EmployeeState(
        isLoading: false,
        employees: [],
        employeesFailureOrSuccess: none(),
      );
}
