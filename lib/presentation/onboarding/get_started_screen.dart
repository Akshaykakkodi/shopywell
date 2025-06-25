import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/dashboard/dashboard_screen.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.getSize.width,
        height: context.getSize.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.png.unsplash.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: context.getSize.width,
              height: context.getSize.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.63),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "You want Authentic, here you go!",
                    style: context.textStyle.s34.w600.white,
                    textAlign: TextAlign.center,
                  ),
                  Gap(14),
                  Text(
                    "Find it here, buy it now!",
                    style: context.textStyle.s14.w400.white,
                    textAlign: TextAlign.center,
                  ),
                  Gap(44),
                  PrimaryButton(
                    width: context.getSize.width * 0.75,
                    title: "Get Started",
                    onPressed: () {
                      AppRouter.pushReplacementScreen(DashboardScreen());
                    },
                  ),
                  Gap(100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
