import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopywell/application/core/constants/app_constants.dart';
import 'package:shopywell/application/core/theme/app_theme.dart';
import 'package:shopywell/application/onboarding/bloc/on_boarding_bloc.dart';
import 'package:shopywell/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.screenSize = MediaQuery.sizeOf(context);
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => OnBoardingBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: AppConstants.navigatorKey,
        title: 'Shopywell',
        theme: AppTheme.getTheme(),
        home: const SplashScreen(),
      ),
    );
  }
}
