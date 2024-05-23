import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_otp/otp_screen.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/widgets/forget_password_header_widget.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.03, horizontal: width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                FPHeaderWidget(
                    textAlign: TextAlign.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    height: height,
                    width: width,
                    image: sFPI1,
                    title: 'Reset via E-Mail Verification.',
                    subtitle: 'Enter your E-Mail address'),
                SizedBox(
                  height: height * 0.05,
                ),
                CommonTextfield(
                  prefixIcon: Icons.mail_rounded,
                  labelText: "E-Mail",
                  hintText: "Enter your E-Mail address here",
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => OtpScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onTertiary),
                    child: Text('Next'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
