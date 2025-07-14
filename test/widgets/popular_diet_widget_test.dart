
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sample/models/popular_diet.dart';
import 'package:flutter_sample/widgets/popular_diet_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  group('PopularDietWidget Tests', () {
    testWidgets('should render PopularDietWidget with correct title',
            (WidgetTester tester) async {
          final popularDiets = PopularDiet.getPopularDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: PopularDietWidget(popularDiets: popularDiets),
              ),
            ),
          );

          expect(find.text('Popular'), findsOneWidget);
        });

    testWidgets('should render correct number of diet items',
            (WidgetTester tester) async {
          final popularDiets = PopularDiet.getPopularDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: PopularDietWidget(popularDiets: popularDiets),
              ),
            ),
          );

          // Verify the number of containers (diet items)
          expect(find.byType(Container), findsNWidgets(popularDiets.length));

          // Verify diet names are displayed
          for (var diet in popularDiets) {
            expect(find.text(diet.name), findsOneWidget);
            expect(find.text('${diet.level} | ${diet.duration} | ${diet.calorie}'),
                findsOneWidget);
          }
        });

    testWidgets('should display SVG icons for each diet',
            (WidgetTester tester) async {
          final popularDiets = PopularDiet.getPopularDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: PopularDietWidget(popularDiets: popularDiets),
              ),
            ),
          );

          expect(find.byType(SvgPicture),
              findsNWidgets(popularDiets.length * 2)); // Each item has 2 SVG images (icon and button)
        });
  });
}