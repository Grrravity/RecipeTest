import 'package:flutter/material.dart';
import 'package:pancakeapp/features/pancake_app/views/components/widgets/paints/svg_paints.dart';

class SvgAsPaint extends StatelessWidget {
  final String asset;
  const SvgAsPaint({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (asset) {
      case "assets/icons/book-2.svg":
        return CustomPaint(
          size: Size(17, (17 * 1.226408818777915).toDouble()),
          painter: Book2CustomPainter(),
        );
      case "assets/icons/calories.svg":
        return CustomPaint(
          size: Size(17, (17 * 1.2519331320421239).toDouble()),
          painter: CaloriesCustomPainter(),
        );
      case "assets/icons/dashboard.svg":
        return CustomPaint(
          size: Size(17, (17 * 1.0024750560754891).toDouble()),
          painter: DashboardCustomPainter(),
        );
      case "assets/icons/heart.svg":
        return CustomPaint(
          size: Size(17, (17 * 0.8955302551127977).toDouble()),
          painter: HeartCustomPainter(),
        );
      case "assets/icons/kettlebell.svg":
        return CustomPaint(
          size: Size(17, (17 * 1.2117746717492588).toDouble()),
          painter: KettlebellCustomPainter(),
        );
      case "assets/icons/new_recipe.svg":
        return CustomPaint(
          size: Size(17, 17),
          painter: NewRecipeCustomPainter(),
        );
      case "assets/icons/timer.svg":
        return CustomPaint(
          size: Size(17, (17 * 1.172825707300035).toDouble()),
          painter: TimerCustomPainter(),
        );
      default:
        return CustomPaint(
          size: Size(17, 17),
          painter: BrokenCustomPainter(),
        );
    }
  }
}
