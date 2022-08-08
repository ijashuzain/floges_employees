import 'package:dartz/dartz.dart';
import 'package:floges_employees/models/auth_cred.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthRepo {
  Future<Either<Failure, String>> login(AuthCredential credential);
}
