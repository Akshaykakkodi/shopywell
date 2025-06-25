import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:shopywell/application/core/extension/extensions.dart';
import 'package:shopywell/application/core/mixins/validator_mixin.dart';
import 'package:shopywell/application/core/route/app_route.dart';
import 'package:shopywell/application/core/theme/app_text_syles.dart';
import 'package:shopywell/presentation/widgets/custom_textField.dart';
import 'package:shopywell/presentation/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen>
    with ValidationMixin {
  var emailController = TextEditingController();

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
                  Text("Forgot\nPassword?", style: context.textStyle.s36.w800),
                  Gap(context.getSize.height * 0.025),
                  CustTextField(
                    hinText: "Enter your email address",
                    controller: emailController,
                    validator: (value) => validateEmail(value),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.email),
                    ),
                  ),
                  Gap(10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '*',
                          style: context.textStyle.s12.w500.red,
                        ),

                        TextSpan(
                          text:
                              'We will send you a message to set or reset  your new password.',
                          style: context.textStyle.s12.w500.secondary,
                        ),
                      ],
                    ),
                  ),
                  Gap(context.getSize.height * 0.025),

                  PrimaryButton(
                    
                    title: "Submit",
                    onPressed: () {
                     if(formkey.currentState!.validate()){
                      FocusScope.of(context).unfocus();
                      AppRouter.pop();
                      Fluttertoast.showToast(msg: "Message Sent to email");
                     }
                    },
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
