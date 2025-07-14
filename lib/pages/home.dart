import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/models/category_model.dart';
import 'package:flutter_sample/widgets/category_widget.dart';
import 'package:flutter_sample/widgets/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 15),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemBuilder: (context, index) {
                  final item = popularDiets[index];
                  return Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff1D1617).withValues(alpha: 0.3),
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          item.iconPath,
                          height: 45,
                          width: 45,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${item.level} | ${item.duration} | ${item.calorie}',
                              style: const TextStyle(
                                color: Color(0xff7B6F72),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: SvgPicture.asset('assets/icons/button.svg'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 25),
                itemCount: popularDiets.length,
              ),
              SizedBox(height: 15),
            ],
          ),
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
        'assets/icons/Arrow - Left 2.svg',
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
        child: SvgPicture.asset('assets/icons/dots.svg', height: 5, width: 5),
      ),
    ),
  ],
);
