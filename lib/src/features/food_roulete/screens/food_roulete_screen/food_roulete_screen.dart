import 'package:flutter/material.dart';
import 'package:foodquest/src/constants/image_strings.dart';
import 'package:foodquest/src/features/food_roulete/controllers/fr_controller.dart';
import 'package:foodquest/src/features/food_roulete/screens/add_food/add_food_modal.dart';
import 'package:foodquest/src/features/food_roulete/screens/food_roulete_screen/widgets/main_header.dart';
import 'package:foodquest/src/utils/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class FoodRouleteScreen extends StatelessWidget {
  const FoodRouleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FoodChoiceController());
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.03, horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Main_Header(height: height, width: width),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Text('Food Roulete Screen',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.4,
              padding: const EdgeInsets.all(5),
              margin: EdgeInsets.all(width * 0.05),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(360),
              ),
              child: Center(
                //Here is where you put the random food place
                child: Obx(
                  () => Text(controller.randomItem.value,
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Theme.of(context).colorScheme.onSurface, width: 1.0),
                minimumSize: Size(width * 0.9, height * 0.06),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              label: Text(
                'Generate',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              icon: Image.asset(
                sMSI1,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: () {
                controller.getRandomItemFromList(controller.foodChoice);
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ElevatedButton.icon(
                  icon: Icon(Icons.add_circle_rounded),
                  label: Text('Add to List'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary),
                  onPressed: () {
                    Add_Foodchoice_Modal.buildShowModalBottomSheet(
                        context, height, width);
                  },
                )),
                SizedBox(width: width * 0.02),
                Expanded(
                    child: ElevatedButton.icon(
                        icon: Icon(Icons.bookmark_add_rounded),
                        onPressed: () {},
                        label: Text('Save'))),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
