import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodquest/src/features/food_roulete/models/food_model.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class FoodChoiceController extends GetxController {
  List<String> foodChoice = [
    "jollibee",
    "chowking",
    "burger king",
    "tropical hut",
    "master buffalo",
    "tatay pepe"
  ].obs;

  final fcInput = TextEditingController();

  int getRandomIndex(List foodChoice) {
    final random = Random();
    return random.nextInt(foodChoice.length);
  }

  final randomItem = Rx<String>('');

  void getRandomItemFromList(List<String> foodChoice) {
    final randomIndex = getRandomIndex(foodChoice);
    randomItem.value = foodChoice[randomIndex];
  }

  String getRandomFood() {
    // Select a random element from the quotes list
    var _chosenFoodChoice = foodChoice[Random().nextInt(foodChoice.length)];
    return _chosenFoodChoice;
  }

  String displayRandomFood() {
    return getRandomFood().toString();
  }

  void addFoodchoice(String newFoodchoice) {
    foodChoice.add(newFoodchoice);
    fcInput.clear(); // Clear the text field after adding
  }
}
