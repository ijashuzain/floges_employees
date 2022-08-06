part of 'hive_bloc.dart';

@freezed
class HiveState with _$HiveState {
  const factory HiveState({
    required Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
    required bool isLoading,
    required List<Employee> employees,
  }) = _HiveState;

  factory HiveState.initial() => HiveState(
        isLoading: false,
        employees: [],
        employeesFailureOrSuccess: none(),
      );
}
