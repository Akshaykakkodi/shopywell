import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/auth/auth_bloc.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/mixins/validator_mixin.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/widgets/custom_textField.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

import '../login/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with ValidationMixin {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20),
                  Text("Create\nAccount", style: context.textStyle.s36.w800),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Username or Email",
                    controller: emailController,
                    validator: (value) =>
                      validateEmail(value)
                    ,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Password",
                    controller: passwordController,
                    obsecuretext: hidePassword,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    validator: (value) =>
                      validatePassword(value)
                    ,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Confirm Password",
                    obsecuretext: hideConfirmPassword,
                    controller: confirmPasswordController,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hideConfirmPassword = !hideConfirmPassword;
                        });
                      },
                      child: Icon(
                        hideConfirmPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    validator: (value) =>
                      validateConfirmPassword(value, passwordController.text)
                    ,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.lock),
                    ),
                  ),

                  Gap(context.getSize.height * 0.02),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking the ',
                          style: context.textStyle.s12.w400.secondary,
                        ),
                        TextSpan(
                          text: 'Register',
                          style: context.textStyle.s12.w400.red,
                        ),
                        TextSpan(
                          text: ' button, you agree to the public offer',
                          style: context.textStyle.s12.w400.secondary,
                        ),
                      ],
                    ),
                  ),
                  Gap(context.getSize.height * 0.02),

                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, authState) {
                      return PrimaryButton(
                        loading: authState.registerState == ApiState.loading,
                        title: "Create Account",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                             FocusScope.of(context).unfocus();
                            context.read<AuthBloc>().add(
                              RegisterWithEmail(
                                emailController.text,
                                passwordController.text,
                              ),
                            );
                          }
                        },
                      );
                    },
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
                        AppRouter.pushAndRemoveUntilScreen(LoginScreen());
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "I Already Have An Account ",
                              style: context.textStyle.s12.w400.secondary,
                            ),

                            TextSpan(
                              text: "Login",
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
