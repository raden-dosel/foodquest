import 'package:flutter/material.dart';
import 'package:foodquest/src/common_widgets/form_container_widget.dart';
import 'package:foodquest/src/features/food_roulete/screens/food_roulete_screen/food_roulete_screen.dart';
import 'package:get/get.dart';

class Add_Foodchoice_Modal {
  static Future<dynamic> buildShowModalBottomSheet(
      BuildContext context, double height, double width) {
    return showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.05),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add food place',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                      onPressed: () {
                        Get.;
                      },
                      icon: Icon(Icons.close_rounded))
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CommonTextfield(
                labelText: 'Add food choice',
                isPasswordField: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
