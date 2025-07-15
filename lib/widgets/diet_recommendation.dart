import 'package:flutter/material.dart';
import 'package:flutter_sample/models/diet_model.dart';
import 'package:flutter_svg/svg.dart';

class DietRecommendation extends StatelessWidget {
  const DietRecommendation({required this.diets, super.key});

  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 240,
          child: ListView.separated(
            itemBuilder: (context, index) {
              final diet = diets[index];
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: diet.boxColor.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(diet.iconPath, height: 50, width: 50),
                    Column(
                      children: [
                        Text(
                          diet.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${diet.level} | ${diet.duration} | ${diet.calorie}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Color(0xff7B6F72),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            diet.viewIsSelected
                                ? const Color(0xff9DCEFF)
                                : Colors.transparent,
                            diet.viewIsSelected
                                ? const Color(0xff92A3FD)
                                : Colors.transparent,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'View',
                          style: TextStyle(
                            color: diet.viewIsSelected
                                ? Colors.white
                                : const Color(0xffC588F2),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 25),
            itemCount: diets.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }
}
