import 'package:floges_employees/bloc/employee_bloc/employee_bloc.dart';
import 'package:floges_employees/bloc/hive_bloc/hive_bloc.dart';
import 'package:floges_employees/views/saved_employees.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class Employees extends StatelessWidget {
  const Employees({Key? key}) : super(key: key);

  _fetchEmployees(BuildContext context) {
    BlocProvider.of<EmployeeBloc>(context)
        .add(const EmployeeEvent.fetchEmployees());
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => _fetchEmployees(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SavedEmployees(),
            ),
          );
        },
        child: const Icon(Icons.save),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        return SizedBox(
          height: 100.h,
          width: 100.w,
          child: ListView.builder(
            itemCount: state.employees.length,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: Image.network(
                  state.employees[index].avatar!,
                ),
              ),
              title: Text(state.employees[index].firstName! +
                  state.employees[index].lastName!),
              subtitle: Text(state.employees[index].email!),
              trailing: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  BlocProvider.of<HiveBloc>(context).add(
                    HiveEvent.addToHive(
                      state.employees[index],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      }),
    );
  }
}
