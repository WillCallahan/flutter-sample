import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sample/models/diet_model.dart';
import 'package:flutter_sample/widgets/diet_recommendation.dart';

void main() {
  group('DietRecommendation Tests', () {
    testWidgets('should render DietRecommendation with correct title',
            (WidgetTester tester) async {
          final diets = DietModel.getDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: DietRecommendation(diets: diets),
              ),
            ),
          );

          expect(find.text('Recommendation\nfor Diet'), findsOneWidget);
        });

    testWidgets('should render correct number of diet recommendations',
            (WidgetTester tester) async {
          final diets = DietModel.getDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: DietRecommendation(diets: diets),
              ),
            ),
          );

          // Verify diet names and details are displayed
          for (var diet in diets) {
            expect(find.text(diet.name), findsOneWidget);
            expect(find.text('${diet.level} | ${diet.duration} | ${diet.calorie}'),
                findsOneWidget);
          }
        });

    testWidgets('should apply correct styling for selected items',
            (WidgetTester tester) async {
          final diets = DietModel.getDiets();

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: DietRecommendation(diets: diets),
              ),
            ),
          );

          // Find containers with gradient decoration
          final containers = find.byType(Container);

          expect(containers, findsWidgets);

          // Verify gradient is applied to selected diet
          final selectedContainer = find.descendant(
            of: find.byType(Container),
            matching: find.byType(Center),
          ).evaluate().where((element) {
            final center = element.widget as Center;
            final text = center.child as Text;
            return text.style?.color == Colors.white;
          });

          expect(selectedContainer.length, 1);
        });
  });
}