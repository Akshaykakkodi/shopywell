import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopywell/application/auth/auth_bloc.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/presentation/dashboard/dashboard_screen.dart';
import 'package:shopywell/presentation/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2)).then((value) {
       if(context.read<AuthBloc>().state.isLoggedIn){
        AppRouter.pushAndRemoveUntilScreen(DashboardScreen());
        return;
       }

        AppRouter.pushReplacementScreen(OnboardingScreen());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Assets.images.png.logo.image(scale: 3))],
      ),
    );
  }
}
