import '../constants/assets.dart';

class PopularDiet {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDiet({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    this.boxIsSelected = false,
  });

  static List<PopularDiet> getPopularDiets() {
    return [
      PopularDiet(
        name: 'Blueberry Pancake',
        iconPath: Assets.blueberryPancake,
        level: 'Intermediate',
        duration: '4 weeks',
        calorie: '2000 kcal',
        boxIsSelected: true,
      ),
      PopularDiet(
        name: 'Salmon Nigiri',
        iconPath: Assets.salmonNigiri,
        level: 'Beginner',
        duration: '6 weeks',
        calorie: '1800 kcal',
        boxIsSelected: false,
      ),
      PopularDiet(
        name: 'Orange Snacks',
        iconPath: Assets.orangeSnacks,
        level: 'Advanced',
        duration: '8 weeks',
        calorie: '2200 kcal',
        boxIsSelected: false,
      ),
      PopularDiet(
        name: 'Canai Break',
        iconPath: Assets.canaiBread,
        level: 'Intermediate',
        duration: '5 weeks',
        calorie: '2500 kcal',
        boxIsSelected: false,
      ),
    ];
  }
}