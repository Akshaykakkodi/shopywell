part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerWithEmail(String email,String password) = RegisterWithEmail;
  const factory AuthEvent.login(String email,String password) = Login;

}