import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/domain/auth/i_auth_facade.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopywell/domain/di/injection.dart';
import 'package:shopywell/presentation/onboarding/get_started_screen.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade;
 
  AuthBloc(this.iAuthFacade) : super(AuthState.initial()) {
    on<RegisterWithEmail>(_registerWithEmail);
    on<Login>(_login);
  }
  void _registerWithEmail(
    RegisterWithEmail event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(registerState: ApiState.loading));
    var response = await iAuthFacade.registerUser(event.email, event.password);
    response.fold(
      (l) {
        emit(state.copyWith(registerState: ApiState.error));
        Fluttertoast.showToast(msg: l.message);
        log(l.message);
      },
      (r) {
        emit(state.copyWith(registerState: ApiState.success));
        Fluttertoast.showToast(msg: "Registration Success");
        AppRouter.pushReplacementScreen(GetStartedScreen());
      },
    );
  }

  void _login(Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginState: ApiState.loading));
    var response = await iAuthFacade.login(event.email, event.password);
    response.fold(
      (l) {
        emit(state.copyWith(loginState: ApiState.error));
        Fluttertoast.showToast(msg: l.message);
        log(l.message);
      },
      (r) {
       
        emit(state.copyWith(loginState: ApiState.success,user: r,isLoggedIn: true));
        Fluttertoast.showToast(msg: "Login Success");
      },
    );
  }
  
  @override
  AuthState? fromJson(Map<String, dynamic> json) {
  return AuthState(isLoggedIn: json['isLoggedIn']);
  }
  
  @override
  Map<String, dynamic>? toJson(AuthState state) {
  return { "isLoggedIn":state.isLoggedIn};
  }

  
}
