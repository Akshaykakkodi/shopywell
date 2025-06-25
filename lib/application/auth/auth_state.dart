part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required ApiState registerState,
    required ApiState loginState

  }) = _AuthState;

   factory AuthState.initial() => AuthState(registerState: ApiState.initial,loginState: ApiState.initial);
}
