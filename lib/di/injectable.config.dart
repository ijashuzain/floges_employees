// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/auth_bloc/auth_bloc.dart' as _i9;
import '../bloc/employee_bloc/employee_bloc.dart' as _i10;
import '../bloc/hive_bloc/hive_bloc.dart' as _i11;
import '../repositories/auth_repository.dart' as _i4;
import '../repositories/employee_repository.dart' as _i6;
import '../repositories/hive_employee_repo.dart' as _i8;
import '../repositories/i_auth_repo.dart' as _i3;
import '../repositories/i_employee_repo.dart' as _i5;
import '../repositories/i_hive_employee_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.IEmployeesRepo>(() => _i6.EmployeeRepository());
  gh.lazySingleton<_i7.IHiveEmployeesRepo>(() => _i8.HiveEmployeeRepo());
  gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(get<_i3.IAuthRepo>()));
  gh.factory<_i10.EmployeeBloc>(
      () => _i10.EmployeeBloc(get<_i5.IEmployeesRepo>()));
  gh.factory<_i11.HiveBloc>(() => _i11.HiveBloc(get<_i7.IHiveEmployeesRepo>()));
  return get;
}
