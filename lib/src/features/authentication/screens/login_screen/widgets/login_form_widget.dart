import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_options/forget_password_modal_bottom_sheet.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_options/forget_password_options_btn.dart';
import 'package:foodquest/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});
  static final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Form(
      key: _key,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const CommonTextfield(
              prefixIcon: Icons.email,
              labelText: "Email",
              hintText: "Enter your email",
            ),
          ),

          SizedBox(
            height: height * 0.01,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const CommonTextfield(
                prefixIcon: Icons.lock,
                hintText: "Enter your password",
                labelText: "Password",
                isPasswordField: true,
              ),
            ),
          ),

          //This is the Forgot Password Button !!!
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(
                    context, height, width);
              },
              child: Text(
                'Forgot password?',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),

          SizedBox(
            height: height * 0.01,
          ),
          //This is the login button
          ElevatedButton(
            onPressed: () {
              Get.to(() => OnboardingScreen());
            },
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Text(
              'Login',
            ),
          ),
        ],
      ),
    );
  }
}
