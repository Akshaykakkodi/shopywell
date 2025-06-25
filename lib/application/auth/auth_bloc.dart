import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/domain/auth/i_auth_facade.dart';
import 'package:fluttertoast/fluttertoast.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade;
  AuthBloc(this.iAuthFacade) : super(AuthState.initial()) {
    on<RegisterWithEmail>(_registerWithEmail);
  }
  _registerWithEmail(RegisterWithEmail event, Emitter<AuthState> emit) async {
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
      },
    );
  }
}
