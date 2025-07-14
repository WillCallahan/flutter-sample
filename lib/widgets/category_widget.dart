import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({required this.categories, super.key});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => SizedBox(width: 25),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
