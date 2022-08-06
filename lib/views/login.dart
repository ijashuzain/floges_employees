import 'package:floges_employees/views/employees.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employees(),
                    ),
                  );
                },
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
