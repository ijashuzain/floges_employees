part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required Option<Either<Failure, String>> loginFailureOrSuccess,
    required bool isLoading,
    required String token,
  }) = _AuthState;

  factory AuthState.initial() =>
      AuthState(loginFailureOrSuccess: none(), isLoading: false, token: '');
}
