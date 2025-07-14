import 'dart:ui';

import '../constants/assets.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static get models {
    return [
      CategoryModel(
        name: 'Salad',
        iconPath: Assets.icons.plate,
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Pancake',
        iconPath: Assets.icons.pancakes,
        boxColor: Color(0xffC58BF2),
      ),
      CategoryModel(
        name: 'Pie',
        iconPath: Assets.icons.pie,
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Blueberry Pancake',
        iconPath: Assets.icons.blueberryPancake,
        boxColor: Color(0xffC58BF2),
      ),
    ];
  }
}
