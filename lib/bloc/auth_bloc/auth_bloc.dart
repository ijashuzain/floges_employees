import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:floges_employees/models/auth_cred.dart';
import 'package:floges_employees/models/failures/failure.dart';
import 'package:floges_employees/models/user/user.dart';
import 'package:floges_employees/repositories/i_auth_repo.dart';
import 'package:floges_employees/views/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _authRepo;

  AuthBloc(this._authRepo) : super(AuthState.initial()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(isLoading: true, loginFailureOrSuccess: none()));
      final Either<Failure, String> loginOption  = await _authRepo.login(event.credential);
      emit(loginOption.fold(
        (failure) => state.copyWith(
          isLoading: false,
          loginFailureOrSuccess: some(left(failure)),
        ),
        (token) => state.copyWith(
          isLoading: false,
          token: token,
          loginFailureOrSuccess: some(right(token)),
        ),
      ));
    });
  }
}
