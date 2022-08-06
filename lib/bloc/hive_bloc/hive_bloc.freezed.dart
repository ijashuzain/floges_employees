// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HiveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addToHive,
    required TResult Function() removeFromHive,
    required TResult Function() fetchFromHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToHive value) addToHive,
    required TResult Function(_RemoveFromHive value) removeFromHive,
    required TResult Function(_FetchFromHive value) fetchFromHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveEventCopyWith<$Res> {
  factory $HiveEventCopyWith(HiveEvent value, $Res Function(HiveEvent) then) =
      _$HiveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HiveEventCopyWithImpl<$Res> implements $HiveEventCopyWith<$Res> {
  _$HiveEventCopyWithImpl(this._value, this._then);

  final HiveEvent _value;
  // ignore: unused_field
  final $Res Function(HiveEvent) _then;
}

/// @nodoc
abstract class _$$_AddToHiveCopyWith<$Res> {
  factory _$$_AddToHiveCopyWith(
          _$_AddToHive value, $Res Function(_$_AddToHive) then) =
      __$$_AddToHiveCopyWithImpl<$Res>;
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$_AddToHiveCopyWithImpl<$Res> extends _$HiveEventCopyWithImpl<$Res>
    implements _$$_AddToHiveCopyWith<$Res> {
  __$$_AddToHiveCopyWithImpl(
      _$_AddToHive _value, $Res Function(_$_AddToHive) _then)
      : super(_value, (v) => _then(v as _$_AddToHive));

  @override
  _$_AddToHive get _value => super._value as _$_AddToHive;

  @override
  $Res call({
    Object? employee = freezed,
  }) {
    return _then(_$_AddToHive(
      employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  @override
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$_AddToHive implements _AddToHive {
  const _$_AddToHive(this.employee);

  @override
  final Employee employee;

  @override
  String toString() {
    return 'HiveEvent.addToHive(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToHive &&
            const DeepCollectionEquality().equals(other.employee, employee));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(employee));

  @JsonKey(ignore: true)
  @override
  _$$_AddToHiveCopyWith<_$_AddToHive> get copyWith =>
      __$$_AddToHiveCopyWithImpl<_$_AddToHive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addToHive,
    required TResult Function() removeFromHive,
    required TResult Function() fetchFromHive,
  }) {
    return addToHive(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
  }) {
    return addToHive?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
    required TResult orElse(),
  }) {
    if (addToHive != null) {
      return addToHive(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToHive value) addToHive,
    required TResult Function(_RemoveFromHive value) removeFromHive,
    required TResult Function(_FetchFromHive value) fetchFromHive,
  }) {
    return addToHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
  }) {
    return addToHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
    required TResult orElse(),
  }) {
    if (addToHive != null) {
      return addToHive(this);
    }
    return orElse();
  }
}

abstract class _AddToHive implements HiveEvent {
  const factory _AddToHive(final Employee employee) = _$_AddToHive;

  Employee get employee;
  @JsonKey(ignore: true)
  _$$_AddToHiveCopyWith<_$_AddToHive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromHiveCopyWith<$Res> {
  factory _$$_RemoveFromHiveCopyWith(
          _$_RemoveFromHive value, $Res Function(_$_RemoveFromHive) then) =
      __$$_RemoveFromHiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveFromHiveCopyWithImpl<$Res>
    extends _$HiveEventCopyWithImpl<$Res>
    implements _$$_RemoveFromHiveCopyWith<$Res> {
  __$$_RemoveFromHiveCopyWithImpl(
      _$_RemoveFromHive _value, $Res Function(_$_RemoveFromHive) _then)
      : super(_value, (v) => _then(v as _$_RemoveFromHive));

  @override
  _$_RemoveFromHive get _value => super._value as _$_RemoveFromHive;
}

/// @nodoc

class _$_RemoveFromHive implements _RemoveFromHive {
  const _$_RemoveFromHive();

  @override
  String toString() {
    return 'HiveEvent.removeFromHive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoveFromHive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addToHive,
    required TResult Function() removeFromHive,
    required TResult Function() fetchFromHive,
  }) {
    return removeFromHive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
  }) {
    return removeFromHive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
    required TResult orElse(),
  }) {
    if (removeFromHive != null) {
      return removeFromHive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToHive value) addToHive,
    required TResult Function(_RemoveFromHive value) removeFromHive,
    required TResult Function(_FetchFromHive value) fetchFromHive,
  }) {
    return removeFromHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
  }) {
    return removeFromHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
    required TResult orElse(),
  }) {
    if (removeFromHive != null) {
      return removeFromHive(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromHive implements HiveEvent {
  const factory _RemoveFromHive() = _$_RemoveFromHive;
}

/// @nodoc
abstract class _$$_FetchFromHiveCopyWith<$Res> {
  factory _$$_FetchFromHiveCopyWith(
          _$_FetchFromHive value, $Res Function(_$_FetchFromHive) then) =
      __$$_FetchFromHiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchFromHiveCopyWithImpl<$Res> extends _$HiveEventCopyWithImpl<$Res>
    implements _$$_FetchFromHiveCopyWith<$Res> {
  __$$_FetchFromHiveCopyWithImpl(
      _$_FetchFromHive _value, $Res Function(_$_FetchFromHive) _then)
      : super(_value, (v) => _then(v as _$_FetchFromHive));

  @override
  _$_FetchFromHive get _value => super._value as _$_FetchFromHive;
}

/// @nodoc

class _$_FetchFromHive implements _FetchFromHive {
  const _$_FetchFromHive();

  @override
  String toString() {
    return 'HiveEvent.fetchFromHive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchFromHive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addToHive,
    required TResult Function() removeFromHive,
    required TResult Function() fetchFromHive,
  }) {
    return fetchFromHive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
  }) {
    return fetchFromHive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addToHive,
    TResult Function()? removeFromHive,
    TResult Function()? fetchFromHive,
    required TResult orElse(),
  }) {
    if (fetchFromHive != null) {
      return fetchFromHive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToHive value) addToHive,
    required TResult Function(_RemoveFromHive value) removeFromHive,
    required TResult Function(_FetchFromHive value) fetchFromHive,
  }) {
    return fetchFromHive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
  }) {
    return fetchFromHive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToHive value)? addToHive,
    TResult Function(_RemoveFromHive value)? removeFromHive,
    TResult Function(_FetchFromHive value)? fetchFromHive,
    required TResult orElse(),
  }) {
    if (fetchFromHive != null) {
      return fetchFromHive(this);
    }
    return orElse();
  }
}

abstract class _FetchFromHive implements HiveEvent {
  const factory _FetchFromHive() = _$_FetchFromHive;
}

/// @nodoc
mixin _$HiveState {
  Option<Either<Failure, List<Employee>>> get employeesFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Employee> get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiveStateCopyWith<HiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveStateCopyWith<$Res> {
  factory $HiveStateCopyWith(HiveState value, $Res Function(HiveState) then) =
      _$HiveStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
      bool isLoading,
      List<Employee> employees});
}

/// @nodoc
class _$HiveStateCopyWithImpl<$Res> implements $HiveStateCopyWith<$Res> {
  _$HiveStateCopyWithImpl(this._value, this._then);

  final HiveState _value;
  // ignore: unused_field
  final $Res Function(HiveState) _then;

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
abstract class _$$_HiveStateCopyWith<$Res> implements $HiveStateCopyWith<$Res> {
  factory _$$_HiveStateCopyWith(
          _$_HiveState value, $Res Function(_$_HiveState) then) =
      __$$_HiveStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<Employee>>> employeesFailureOrSuccess,
      bool isLoading,
      List<Employee> employees});
}

/// @nodoc
class __$$_HiveStateCopyWithImpl<$Res> extends _$HiveStateCopyWithImpl<$Res>
    implements _$$_HiveStateCopyWith<$Res> {
  __$$_HiveStateCopyWithImpl(
      _$_HiveState _value, $Res Function(_$_HiveState) _then)
      : super(_value, (v) => _then(v as _$_HiveState));

  @override
  _$_HiveState get _value => super._value as _$_HiveState;

  @override
  $Res call({
    Object? employeesFailureOrSuccess = freezed,
    Object? isLoading = freezed,
    Object? employees = freezed,
  }) {
    return _then(_$_HiveState(
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

class _$_HiveState implements _HiveState {
  const _$_HiveState(
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
    return 'HiveState(employeesFailureOrSuccess: $employeesFailureOrSuccess, isLoading: $isLoading, employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HiveState &&
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
  _$$_HiveStateCopyWith<_$_HiveState> get copyWith =>
      __$$_HiveStateCopyWithImpl<_$_HiveState>(this, _$identity);
}

abstract class _HiveState implements HiveState {
  const factory _HiveState(
      {required final Option<Either<Failure, List<Employee>>>
          employeesFailureOrSuccess,
      required final bool isLoading,
      required final List<Employee> employees}) = _$_HiveState;

  @override
  Option<Either<Failure, List<Employee>>> get employeesFailureOrSuccess;
  @override
  bool get isLoading;
  @override
  List<Employee> get employees;
  @override
  @JsonKey(ignore: true)
  _$$_HiveStateCopyWith<_$_HiveState> get copyWith =>
      throw _privateConstructorUsedError;
}
