// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  final EmployeeEvent _value;
  // ignore: unused_field
  final $Res Function(EmployeeEvent) _then;
}

/// @nodoc
abstract class _$$_FetchEmployeesCopyWith<$Res> {
  factory _$$_FetchEmployeesCopyWith(
          _$_FetchEmployees value, $Res Function(_$_FetchEmployees) then) =
      __$$_FetchEmployeesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchEmployeesCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$$_FetchEmployeesCopyWith<$Res> {
  __$$_FetchEmployeesCopyWithImpl(
      _$_FetchEmployees _value, $Res Function(_$_FetchEmployees) _then)
      : super(_value, (v) => _then(v as _$_FetchEmployees));

  @override
  _$_FetchEmployees get _value => super._value as _$_FetchEmployees;
}

/// @nodoc

class _$_FetchEmployees implements _FetchEmployees {
  const _$_FetchEmployees();

  @override
  String toString() {
    return 'EmployeeEvent.fetchEmployees()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchEmployees);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
  }) {
    return fetchEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchEmployees,
  }) {
    return fetchEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
  }) {
    return fetchEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
  }) {
    return fetchEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees(this);
    }
    return orElse();
  }
}

abstract class _FetchEmployees implements EmployeeEvent {
  const factory _FetchEmployees() = _$_FetchEmployees;
}

/// @nodoc
mixin _$EmployeeState {
  Option<Either<Failure, List<Employee>>> get employeesFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Employee> get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
      bool isLoading,
      List<Employee> employees});
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  final EmployeeState _value;
  // ignore: unused_field
  final $Res Function(EmployeeState) _then;

  @override
  $Res call({
    Object? employeesFailureOrSuccess = freezed,
    Object? isLoading = freezed,
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      employeesFailureOrSuccess: employeesFailureOrSuccess == freezed
          ? _value.employeesFailureOrSuccess
          : employeesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Employee>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeStateCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$_EmployeeStateCopyWith(
          _$_EmployeeState value, $Res Function(_$_EmployeeState) then) =
      __$$_EmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
      bool isLoading,
      List<Employee> employees});
}

/// @nodoc
class __$$_EmployeeStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res>
    implements _$$_EmployeeStateCopyWith<$Res> {
  __$$_EmployeeStateCopyWithImpl(
      _$_EmployeeState _value, $Res Function(_$_EmployeeState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeState));

  @override
  _$_EmployeeState get _value => super._value as _$_EmployeeState;

  @override
  $Res call({
    Object? employeesFailureOrSuccess = freezed,
    Object? isLoading = freezed,
    Object? employees = freezed,
  }) {
    return _then(_$_EmployeeState(
      employeesFailureOrSuccess: employeesFailureOrSuccess == freezed
          ? _value.employeesFailureOrSuccess
          : employeesFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<Employee>>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc

class _$_EmployeeState implements _EmployeeState {
  const _$_EmployeeState(
      {required this.employeesFailureOrSuccess,
      required this.isLoading,
      required final List<Employee> employees})
      : _employees = employees;

  @override
  final Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess;
  @override
  final bool isLoading;
  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeeState(employeesFailureOrSuccess: $employeesFailureOrSuccess, isLoading: $isLoading, employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeState &&
            const DeepCollectionEquality().equals(
                other.employeesFailureOrSuccess, employeesFailureOrSuccess) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(employeesFailureOrSuccess),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      __$$_EmployeeStateCopyWithImpl<_$_EmployeeState>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required final Option<Either<Failure, List<Employee>>>
          employeesFailureOrSuccess,
      required final bool isLoading,
      required final List<Employee> employees}) = _$_EmployeeState;

  @override
  Option<Either<Failure, List<Employee>>> get employeesFailureOrSuccess;
  @override
  bool get isLoading;
  @override
  List<Employee> get employees;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeStateCopyWith<_$_EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}
