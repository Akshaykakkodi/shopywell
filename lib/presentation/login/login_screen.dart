import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/gen/assets.gen.dart';
import 'package:shopywell/application/core/theme/app_colors.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/widgets/custom_textField.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20),
                Text("Welcome\nBack!", style: context.textStyle.s36.w800),
                Gap(context.getSize.height * 0.025),
                CustTextField(
                  hinText: "Username or Email",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.person),
                  ),
                ),
                Gap(context.getSize.height * 0.025),
                CustTextField(
                  hinText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.lock),
                  ),
                ),
                Gap(8),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      "Forgot Password?",
                      style: context.textStyle.red.s12.w400,
                    ),
                  ],
                ),
                Gap(context.getSize.height * 0.06),
            
                PrimaryButton(title: "Login", onPressed: () {}),
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
                Gap(context.getSize.height*0.025),
                Center(
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
              ],
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
    return Container(
      padding: EdgeInsets.all(15),
      height: 54,
      width: 54,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        color: AppColors.lightPink,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
