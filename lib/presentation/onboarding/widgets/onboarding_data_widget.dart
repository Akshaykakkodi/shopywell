import 'package:flutter/material.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/domain/onboarding/model/onboarding_object.dart';

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({super.key, required this.data});

  final OnboardingObject data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
       Image.asset(data.imagePath??"",scale: 2,),
        Text(data.title??"", style: context.textStyle.s24.w800),
        Text(
        data.description??"",
          style: context.textStyle.s14.w600.grey1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
