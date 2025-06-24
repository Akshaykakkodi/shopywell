import 'package:shopywell/application/core/gen/assets.gen.dart';

class OnboardingObject {
  final String? imagePath;
  final String? title;
  final String? description;
  OnboardingObject({this.imagePath, this.title, this.description});
}

List<OnboardingObject> onboardingData = [
  OnboardingObject(imagePath: Assets.images.png.onboarding1.path,title: "Choose Products",description: longText),
   OnboardingObject(imagePath: Assets.images.png.onboarding2.path,title: "Make Payment",description: longText),

    OnboardingObject(imagePath: Assets.images.png.onboarding3.path,title: "Get Your Order",description: longText),

];



String longText= "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.s";