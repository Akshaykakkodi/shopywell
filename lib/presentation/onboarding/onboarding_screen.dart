import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/application/onboarding/bloc/on_boarding_bloc.dart';
import 'package:shopywell/domain/onboarding/model/onboarding_object.dart';
import 'package:shopywell/presentation/login/login_screen.dart';
import 'package:shopywell/presentation/onboarding/widgets/onboarding_data_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<OnBoardingBloc, OnBoardingState>(
            builder: (context, onBoardingState) {
              return Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${onBoardingState.index + 1}",
                              style: context.textStyle.s18.w600,
                            ),

                            TextSpan(
                              text: "/3",
                              style: context.textStyle.s18.w600.grey1,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          AppRouter.pushReplacementScreen(LoginScreen());
                        },
                        child: Text("Skip", style: context.textStyle.s18.w600),
                      ),
                    ],
                  ),

                  Spacer(),
                  SizedBox(
                    height: context.getSize.height * 0.6,
                    child: PageView.builder(
                      controller: onBoardingState.pageController,
                      onPageChanged: (value) {
                        print(value);
                        context.read<OnBoardingBloc>().add(
                          OnPageChanged(value),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: onboardingData.length,
                      itemBuilder: (context, index) {
                        return OnboardingDataWidget(
                          data: onboardingData[index],
                        );
                      },
                    ),
                  ),
                  Gap(context.getSize.height * 0.2),

                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          onBoardingState.index != 0
                              ? GestureDetector(
                                onTap: () {
                                  context.read<OnBoardingBloc>().add(
                                    OnPrev(),
                                  );
                                },
                                child: Text(
                                  "Prev",
                                  style: context.textStyle.s18.w600.grey1,
                                ),
                              )
                              : Gap(40),

                          GestureDetector(
                            onTap: () {
                              context.read<OnBoardingBloc>().add(OnNext());
                            },
                            child: Text(
                              onBoardingState.index != 2
                                  ? "Next"
                                  : "Get Started",
                              style: context.textStyle.s18.red.w600,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        left: context.getSize.height * 0.17,
                        child: SizedBox(
                          // width: context.getSize.width * 0.2,
                          child: Row(
                            spacing: 5,
                            children: [
                              ...List.generate(3, (index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    height: 8,
                                    width:
                                        onBoardingState.index == index ? 40 : 8,
                                    color:
                                        onBoardingState.index == index
                                            ? Colors.black
                                            : AppColors.textGrey1,
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
