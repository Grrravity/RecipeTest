import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class NewRecipeCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3750000, 0);
    path_0.lineTo(size.width * 0.6250000, 0);
    path_0.arcToPoint(Offset(size.width * 1.000000, size.height * 0.3750000),
        radius:
            Radius.elliptical(size.width * 0.3750000, size.height * 0.3750000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 1.000000, size.height * 0.6250000);
    path_0.arcToPoint(Offset(size.width * 0.6250000, size.height * 1.000000),
        radius:
            Radius.elliptical(size.width * 0.3750000, size.height * 0.3750000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3750000, size.height * 1.000000);
    path_0.arcToPoint(
        Offset(size.width * 2.020118e-16, size.height * 0.6250000),
        radius:
            Radius.elliptical(size.width * 0.3750000, size.height * 0.3750000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 2.020118e-16, size.height * 0.3750000);
    path_0.arcToPoint(
        Offset(size.width * 0.3750000, size.height * 2.020118e-16),
        radius:
            Radius.elliptical(size.width * 0.3750000, size.height * 0.3750000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff3ab4be).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1034875, size.height * 0.5153904);
    path_1.arcToPoint(Offset(size.width * 0.1535254, size.height * 0.5655231),
        radius: Radius.elliptical(
            size.width * 0.03913950, size.height * 0.03913950),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.lineTo(size.width * 0.2254549, size.height * 0.5480857);
    path_1.arcToPoint(Offset(size.width * 0.3344200, size.height * 0.5742418),
        radius:
            Radius.elliptical(size.width * 0.2331312, size.height * 0.2331312),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.arcToPoint(Offset(size.width * 0.1209249, size.height * 0.4445603),
        radius:
            Radius.elliptical(size.width * 0.2382108, size.height * 0.2382108),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_1.close();
    path_1.moveTo(size.width * 0.1655989, size.height * 0.4467400);
    path_1.arcToPoint(Offset(size.width * 0.1634193, size.height * 0.4304018),
        radius: Radius.elliptical(
            size.width * 0.02177786, size.height * 0.02177786),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.arcToPoint(Offset(size.width * 0.2386088, size.height * 0.5055914),
        radius:
            Radius.elliptical(size.width * 0.1962092, size.height * 0.1962092),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_1.arcToPoint(Offset(size.width * 0.2222707, size.height * 0.5034117),
        radius: Radius.elliptical(
            size.width * 0.02113343, size.height * 0.02113343),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.lineTo(size.width * 0.1459439, size.height * 0.5219295);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 38.92470, size.height * 243.7106);
    path_2.lineTo(size.width * 38.92470, size.height * 243.6474);
    path_2.lineTo(size.width * 38.86152, size.height * 243.6474);
    path_2.arcToPoint(Offset(size.width * 38.86152, size.height * 243.6157),
        radius: Radius.elliptical(
            size.width * 0.01580743, size.height * 0.01580743),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.lineTo(size.width * 38.92470, size.height * 243.6157);
    path_2.lineTo(size.width * 38.92470, size.height * 243.5526);
    path_2.arcToPoint(Offset(size.width * 38.95625, size.height * 243.5526),
        radius: Radius.elliptical(
            size.width * 0.01578848, size.height * 0.01578848),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_2.lineTo(size.width * 38.95625, size.height * 243.6157);
    path_2.lineTo(size.width * 39.01945, size.height * 243.6157);
    path_2.arcToPoint(Offset(size.width * 39.01945, size.height * 243.6474),
        radius: Radius.elliptical(
            size.width * 0.01580743, size.height * 0.01580743),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.lineTo(size.width * 38.95625, size.height * 243.6474);
    path_2.lineTo(size.width * 38.95625, size.height * 243.7106);
    path_2.arcToPoint(Offset(size.width * 38.92470, size.height * 243.7106),
        radius: Radius.elliptical(
            size.width * 0.01578848, size.height * 0.01578848),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
