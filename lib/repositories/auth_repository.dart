import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:floges_employees/models/auth_cred.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/repositories/i_auth_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepository implements IAuthRepo {
  @override
  Future<Either<Failure, String>> login(AuthCredential cred) async {
    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': cred.email,
          'password': cred.password,
        },
      );
      log(response.body.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(jsonDecode(response.body)['token']);
      } else {
        return const Left(Failure.server());
      }
    } catch (e) {
      return const Left(Failure.client());
    }
  }
}
