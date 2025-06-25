import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopywell/application/auth/auth_bloc.dart';
import 'package:shopywell/application/core/constants/app_constants.dart';
import 'package:shopywell/application/core/theme/app_theme.dart';
import 'package:shopywell/application/onboarding/bloc/on_boarding_bloc.dart';
import 'package:shopywell/domain/auth/i_auth_facade.dart';
import 'package:shopywell/domain/di/injection.dart';
import 'package:shopywell/presentation/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await configureDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConstants.screenSize = MediaQuery.sizeOf(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnBoardingBloc()),
        BlocProvider(create: (context) => AuthBloc(sl<IAuthFacade>())),
      ],
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
