import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:foodquest/src/constants/text_strings.dart';
import 'package:foodquest/src/features/authentication/controllers/otp_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp = '';
    var otpController = Get.put(OTPController());
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tOtpTitle,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: width * 0.2),
              ),
              Text(
                tOtpSubtitle.toUpperCase(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                tOtpMessage + "raden.dosel00@gmail.com",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              OtpTextField(
                  numberOfFields: 6,
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  filled: true,
                  focusedBorderColor: Theme.of(context).colorScheme.onSurface,
                  //We could use the onSubmit function
                  onSubmit: (code) {
                    otp = code;
                    otpController.instance.verifyOTP(otp);
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              ElevatedButton(
                  onPressed: () {
                    otpController.instance.verifyOTP(otp);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.onTertiary),
                  child: Text('Submit'))
            ],
          ),
        ),
      )),
    );
  }
}
