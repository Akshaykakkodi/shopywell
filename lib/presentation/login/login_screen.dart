import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/auth/auth_bloc.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/mixins/validator_mixin.dart';
import 'package:shopywell/application/core/route/app_route.dart' show AppRouter;
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/login/forgot_password_screen.dart';
import 'package:shopywell/presentation/onboarding/get_started_screen.dart';
import 'package:shopywell/presentation/registration/registration_screen.dart';
import 'package:shopywell/presentation/widgets/custom_textField.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20),
                  Text("Welcome\nBack!", style: context.textStyle.s36.w800),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Username or Email",
                    controller: emailController,
                    validator: (value) => validateEmail(value),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Password",
                    controller: passwordController,
                    suffixIcon: Icon(Icons.visibility),
                    validator: (value) => validatePassword(value),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          AppRouter.pushScreen(ForgotPasswordScreen());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: context.textStyle.red.s12.w400,
                        ),
                      ),
                    ],
                  ),
                  Gap(context.getSize.height * 0.06),

                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, authState) {
                      if (authState.loginState == ApiState.success) {
                        AppRouter.pushReplacementScreen(GetStartedScreen());
                      }
                    },
                    listenWhen:
                        (previous, current) =>
                            previous.loginState != current.loginState,
                            builder: (context, authState) =>  PrimaryButton(
                      loading: authState.loginState==ApiState.loading,
                      title: "Login",
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                           FocusScope.of(context).unfocus();
                          context.read<AuthBloc>().add(
                            Login(
                              emailController.text,
                              passwordController.text,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  Gap(context.getSize.height * 0.06),
                  Center(
                    child: Text(
                      "- OR Continue with -",
                      style: context.textStyle.s12.w500.secondary,
                    ),
                  ),
                  Gap(context.getSize.height * 0.03),

                  Row(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialTile(child: Assets.images.png.google1Png.image()),
                      SocialTile(child: Assets.images.svg.apple.svg()),
                      SocialTile(child: Assets.images.svg.facebook.svg()),
                    ],
                  ),
                  Gap(context.getSize.height * 0.025),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        AppRouter.pushScreen(RegistrationScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Create An Account ",
                              style: context.textStyle.s12.w400.secondary,
                            ),

                            TextSpan(
                              text: "SignUp",
                              style: context.textStyle.s14.w600.red.copyWith(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialTile extends StatelessWidget {
  const SocialTile({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: "Coming Soon");
      },
      child: Container(
        padding: EdgeInsets.all(15),
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          color: AppColors.lightPink,
          borderRadius: BorderRadius.circular(50),
        ),
        child: child,
      ),
    );
  }
}
