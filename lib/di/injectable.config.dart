// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../bloc/employee_bloc/employee_bloc.dart' as _i7;
import '../bloc/hive_bloc/hive_bloc.dart' as _i8;
import '../repositories/employee_repository.dart' as _i4;
import '../repositories/hive_employee_repo.dart' as _i6;
import '../repositories/i_employee_repo.dart' as _i3;
import '../repositories/i_hive_employee_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IEmployeesRepo>(() => _i4.EmployeeRepository());
  gh.lazySingleton<_i5.IHiveEmployeesRepo>(() => _i6.HiveEmployeeRepo());
  gh.factory<_i7.EmployeeBloc>(
      () => _i7.EmployeeBloc(get<_i3.IEmployeesRepo>()));
  gh.factory<_i8.HiveBloc>(() => _i8.HiveBloc(get<_i5.IHiveEmployeesRepo>()));
  return get;
}
