part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  const factory OnBoardingEvent.onPageChanged(int index) = OnPageChanged;
  const factory OnBoardingEvent.onPrev() = OnPrev;
  const factory OnBoardingEvent.onNext() = OnNext;


  
  
}