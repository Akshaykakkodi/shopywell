part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    required int index,
    required PageController pageController
  }) = _OnBoardingState;

   factory OnBoardingState.initial() =>OnBoardingState(index: 0,pageController: PageController());
}
