import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/features/authentication/controllers/signup_controller.dart';
import 'package:foodquest/src/features/authentication/screens/forgot_password_screen/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);
  static final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Form(
      key: _key,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CommonTextfield(
              controller: controller.fullName,
              labelText: "Full Name",
              hintText: "Enter your Full Name",
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CommonTextfield(
              controller: controller.email,
              labelText: "Email",
              hintText: "Enter your Email",
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CommonTextfield(
              controller: controller.phoneNo,
              labelText: "Phone Number",
              hintText: "Enter your phone number",
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CommonTextfield(
              controller: controller.password,
              labelText: "Password",
              hintText: "Enter your Password",
              isPasswordField: true,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: CommonTextfield(
              controller: controller.cPassword,
              labelText: "Verify Password",
              hintText: "Verify your Password",
              isPasswordField: true,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          ElevatedButton(
            onPressed: () {
              if (_key.currentState!.validate()) {
                if (!controller.isPasswordMatch()) {
                  Get.showSnackbar(GetSnackBar(
                    message: 'Passwords do not match',
                    duration: Duration(seconds: 2),
                  ));
                  return;
                }

                {
                  /*SignupController.instance.registerUser(
                    controller.email.text.trim(),
                    controller.password.text.trim()); */
                }
                SignupController.instance
                    .phoneAuthentication(controller.phoneNo.text.trim());
                Get.to(OtpScreen());
              }
            },
            style: Theme.of(context).elevatedButtonTheme.style,
            child: Text(
              'Submit',
            ),
          ),
        ],
      ),
    );
  }
}
