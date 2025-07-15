import 'dart:ui';

import '../constants/assets.dart';

class CategoryModel {
  final String name;
  final String iconPath;
  final Color boxColor;

  const CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> get models {
    return const [
      CategoryModel(
        name: 'Salad',
        iconPath: Assets.plate,
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Pancake',
        iconPath: Assets.pancakes,
        boxColor: Color(0xffC58BF2),
      ),
      CategoryModel(
        name: 'Pie',
        iconPath: Assets.pie,
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Blueberry Pancake',
        iconPath: Assets.blueberryPancake,
        boxColor: Color(0xffC58BF2),
      ),
    ];
  }
}
