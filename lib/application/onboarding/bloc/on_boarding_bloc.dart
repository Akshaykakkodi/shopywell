import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/presentation/login/login_screen.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingState.initial()) {
    on<OnPageChanged>(_onPageChanged);
    on<OnPrev>(_onPrev);
    on<OnNext>(_onNext);
  }

  void _onPageChanged(OnPageChanged event, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(index: event.index));
  }

  void _onPrev(OnPrev event, Emitter<OnBoardingState> emit) {
    if (state.index != 0) {
      emit(state.copyWith(index: state.index - 1));
      state.pageController.animateToPage(
        state.index,
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  void _onNext(OnNext event, Emitter<OnBoardingState> emit) {
    if (state.index != 2) {
      emit(state.copyWith(index: state.index + 1));
      state.pageController.animateToPage(
        state.index,
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }else{
      AppRouter.pushReplacementScreen(LoginScreen());
    }
  }
}
