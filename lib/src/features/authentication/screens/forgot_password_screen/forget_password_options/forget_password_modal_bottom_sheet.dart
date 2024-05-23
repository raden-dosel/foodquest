import 'package:flutter/material.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_mail/forget_password_mail.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_options/forget_password_options_btn.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(
      BuildContext context, double height, double width) {
    return showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Make a selection!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
                'Select one of the options given below to reset your password.',
                style: Theme.of(context).textTheme.bodySmall),
            SizedBox(
              height: height * 0.03,
            ),
            ForgetPasswordWidget(
              icon: Icons.email_rounded,
              title: "E-Mail",
              subTitle: "Reset via E-Mail Verification.",
              width: width,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMailScreen());
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            ForgetPasswordWidget(
              icon: Icons.phone_android_rounded,
              title: "Phone",
              subTitle: "Reset via Phone Verification.",
              width: width,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
