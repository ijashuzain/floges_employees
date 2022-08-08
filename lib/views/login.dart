import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:floges_employees/bloc/auth_bloc/auth_bloc.dart';
import 'package:floges_employees/models/auth_cred.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/views/employees.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _usernameController.text = 'eve.holt@reqres.in';
    _passwordController.text = 'cityslicka';
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Username"),
                controller: _usernameController,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Password"),
                controller: _passwordController,
                obscureText: true,
                obscuringCharacter: ".",
              ),
              SizedBox(height: 4.h),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.loginFailureOrSuccess.fold(() {}, (result) {
                    result.fold(
                      (failure) {
                        //show snackbar
                        Scaffold.of(context).showSnackBar(const SnackBar(
                          content: Text("Something went wrong"),
                        ));
                      },
                      (success) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Employees(),
                          ),
                        );
                      },
                    );
                  });
                },
                child: ElevatedButton(
                  onPressed: () {
                    AuthCredential authCredential = AuthCredential(
                        email: _usernameController.text,
                        password: _passwordController.text);
                    BlocProvider.of<AuthBloc>(context)
                        .add(AuthEvent.login(authCredential));
                  },
                  child: const Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
