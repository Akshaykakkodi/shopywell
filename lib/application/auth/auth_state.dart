part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required ApiState registerState
  }) = _AuthState;

   factory AuthState.initial() => AuthState(registerState: ApiState.initial);
}
