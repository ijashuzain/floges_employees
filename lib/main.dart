import 'package:floges_employees/bloc/auth_bloc/auth_bloc.dart';
import 'package:floges_employees/bloc/employee_bloc/employee_bloc.dart';
import 'package:floges_employees/bloc/hive_bloc/hive_bloc.dart';
import 'package:floges_employees/di/injectable.dart';
import 'package:floges_employees/models/employee/employee.dart';
import 'package:floges_employees/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();
  Hive.registerAdapter(EmployeeAdapter());
  await Hive.openBox<Employee>('employees');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<EmployeeBloc>(create: (ctx) => getIt<EmployeeBloc>()),
          BlocProvider<HiveBloc>(create: (ctx) => getIt<HiveBloc>()),
          BlocProvider<AuthBloc>(create: (ctx) => getIt<AuthBloc>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
          ),
          home: Login(),
        ),
      );
    });
  }
}
