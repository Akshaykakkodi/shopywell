part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
     ApiState? registerState,
     ApiState? loginState,
    required bool isLoggedIn,
     UserCredential? user

  }) = _AuthState;

   factory AuthState.initial() => AuthState(registerState: ApiState.initial,loginState: ApiState.initial,isLoggedIn: false,user: null);
}
