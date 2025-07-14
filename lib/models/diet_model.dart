import 'dart:ui';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
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
        iconPath: "assets/icons/honey-pancakes.svg",
        level: "Easy",
        duration: "30mins",
        calorie: "2000 kcal",
        boxColor: const Color(0xff92A3FD),
        viewIsSelected: true
      ),
      DietModel(
        name: "Canai Bread",
        iconPath: "assets/icons/canai-bread.svg",
        level: "Intermediate",
        duration: "6 weeks",
        calorie: "2000 kcal",
        boxColor: const Color(0xffC58BF2)
      ),
      DietModel(
        name: "Orange Snacks",
        iconPath: "assets/icons/orange-snacks.svg",
        level: "Beginner",
        duration: "3 weeks",
        calorie: "1800 kcal",
        boxColor: const Color(0xff92A3FD)
      ),
    ];
  }
}