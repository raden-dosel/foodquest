import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_controller.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_model.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final Widget? child;
  const SplashScreen({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeAnimationController());
    var size = MediaQuery.of(context).size;
    controller.startAnimationSplashScreen();

    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Stack(
        children: [
          FadeAnimation(
            durationMS: 3000,
            model: FadeAnimationModel(topAfter: 150, topBefore: 100),
            child: Image.asset(
              "assets/logo/MainLogo.png",
              fit: BoxFit.cover,
              width: 1 * size.width,
            ),
          ),
        ],
      ),
    );
  }
}
