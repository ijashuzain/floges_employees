import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cred.freezed.dart';
part 'auth_cred.g.dart';

@freezed
class AuthCredential with _$AuthCredential{
  const factory AuthCredential({
    required String email,
    required String password,
  }) = _AuthCredential;

  factory AuthCredential.fromJson(Map<String, dynamic> json) => _$AuthCredentialFromJson(json);
  
}