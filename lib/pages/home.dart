import 'package:flutter/material.dart';
import 'package:flutter_sample/models/category_model.dart';
import 'package:flutter_sample/widgets/category_widget.dart';
import 'package:flutter_sample/widgets/popular_diet_widget.dart';
import 'package:flutter_sample/widgets/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/assets.dart';
import '../models/diet_model.dart';
import '../models/popular_diet.dart';
import '../widgets/diet_recommendation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var diets = DietModel.getDiets();
    var categories = CategoryModel.models;
    var popularDiets = PopularDiet.getPopularDiets();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SearchField(),
          const SizedBox(height: 25),
          FoodCategory(categories: categories),
          const SizedBox(height: 25),
          DietRecommendation(diets: diets),
          const SizedBox(height: 25),
          PopularDietWidget(popularDiets: popularDiets,)
        ],
      ),
    );
  }
}

AppBar appBar() => AppBar(
  title: const Text(
    'Breakfast',
    style: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
  elevation: 0.0,
  backgroundColor: Colors.white,
  leading: GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xffF7F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        Assets.icons.arrowLeft2,
        height: 20,
        width: 20,
      ),
    ),
  ),
  actions: [
    GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(Assets.icons.dots, height: 5, width: 5),
      ),
    ),
  ],
);
