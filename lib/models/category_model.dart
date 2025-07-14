import 'dart:ui';

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
        iconPath: 'assets/icons/plate.svg',
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Pancake',
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: Color(0xffC58BF2),
      ),
      CategoryModel(
        name: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        boxColor: Color(0xff92A3FD),
      ),
      CategoryModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/blueberry-pancake.svg',
        boxColor: Color(0xffC58BF2),
      ),
    ];
  }
}
