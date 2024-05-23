import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_controller.dart';
import 'package:foodquest/src/common_widgets/animation_widgets/animation_widget_model.dart';
import 'package:get/get.dart';

class FadeAnimation extends StatelessWidget {
  FadeAnimation(
      {super.key, required this.durationMS, this.model, required this.child});
  final controller = Get.put(FadeAnimationController());
  final int durationMS;
  final FadeAnimationModel? model;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
        duration: Duration(milliseconds: durationMS),
        top: controller.animate.value ? model!.topAfter : model!.topBefore,
        left: controller.animate.value ? model!.leftAfter : model!.leftBefore,
        bottom:
            controller.animate.value ? model!.bottomAfter : model!.bottomBefore,
        right:
            controller.animate.value ? model!.rightAfter : model!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationMS),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
        )));
  }
}
