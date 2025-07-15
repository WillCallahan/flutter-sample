import 'dart:ui';

import '../constants/assets.dart';

class DietModel {
  final String name;
  final String iconPath;
  final String level;
  final String duration;
  final String calorie;
  final Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    this.viewIsSelected = false,
  });

  static List<DietModel> getDiets() {
    return [
      DietModel(
        name: "Honey Pancakes",
        iconPath: Assets.honeyPancakes,
        level: "Easy",
        duration: "30mins",
        calorie: "2000 kcal",
        boxColor: const Color(0xff92A3FD),
        viewIsSelected: true
      ),
      DietModel(
        name: "Canai Bread",
        iconPath: Assets.canaiBread,
        level: "Intermediate",
        duration: "6 weeks",
        calorie: "2000 kcal",
        boxColor: const Color(0xffC58BF2)
      ),
      DietModel(
        name: "Orange Snacks",
        iconPath: Assets.orangeSnacks,
        level: "Beginner",
        duration: "3 weeks",
        calorie: "1800 kcal",
        boxColor: const Color(0xff92A3FD)
      ),
    ];
  }
}