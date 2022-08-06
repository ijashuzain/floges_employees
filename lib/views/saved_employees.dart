import 'package:floges_employees/bloc/hive_bloc/hive_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class SavedEmployees extends StatelessWidget {
  const SavedEmployees({Key? key}) : super(key: key);

  _fetchSavedEmloyees(BuildContext context) {
    BlocProvider.of<HiveBloc>(context).add(const HiveEvent.fetchFromHive());
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => _fetchSavedEmloyees(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved Employees"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<HiveBloc>(context)
              .add(const HiveEvent.removeFromHive());
        },
        child: const Icon(Icons.delete),
      ),
      body: BlocBuilder<HiveBloc, HiveState>(builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        if(state.employees.isEmpty) {
          return const Center(
            child: Text("No employees saved"),
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
            ),
          ),
        );
      }),
    );
  }
}
