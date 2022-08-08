// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cred.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCredential _$AuthCredentialFromJson(Map<String, dynamic> json) {
  return _AuthCredential.fromJson(json);
}

/// @nodoc
mixin _$AuthCredential {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCredentialCopyWith<AuthCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCredentialCopyWith<$Res> {
  factory $AuthCredentialCopyWith(
          AuthCredential value, $Res Function(AuthCredential) then) =
      _$AuthCredentialCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthCredentialCopyWithImpl<$Res>
    implements $AuthCredentialCopyWith<$Res> {
  _$AuthCredentialCopyWithImpl(this._value, this._then);

  final AuthCredential _value;
  // ignore: unused_field
  final $Res Function(AuthCredential) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthCredentialCopyWith<$Res>
    implements $AuthCredentialCopyWith<$Res> {
  factory _$$_AuthCredentialCopyWith(
          _$_AuthCredential value, $Res Function(_$_AuthCredential) then) =
      __$$_AuthCredentialCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthCredentialCopyWithImpl<$Res>
    extends _$AuthCredentialCopyWithImpl<$Res>
    implements _$$_AuthCredentialCopyWith<$Res> {
  __$$_AuthCredentialCopyWithImpl(
      _$_AuthCredential _value, $Res Function(_$_AuthCredential) _then)
      : super(_value, (v) => _then(v as _$_AuthCredential));

  @override
  _$_AuthCredential get _value => super._value as _$_AuthCredential;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthCredential(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthCredential implements _AuthCredential {
  const _$_AuthCredential({required this.email, required this.password});

  factory _$_AuthCredential.fromJson(Map<String, dynamic> json) =>
      _$$_AuthCredentialFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthCredential(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthCredential &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthCredentialCopyWith<_$_AuthCredential> get copyWith =>
      __$$_AuthCredentialCopyWithImpl<_$_AuthCredential>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthCredentialToJson(this);
  }
}

abstract class _AuthCredential implements AuthCredential {
  const factory _AuthCredential(
      {required final String email,
      required final String password}) = _$_AuthCredential;

  factory _AuthCredential.fromJson(Map<String, dynamic> json) =
      _$_AuthCredential.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCredentialCopyWith<_$_AuthCredential> get copyWith =>
      throw _privateConstructorUsedError;
}