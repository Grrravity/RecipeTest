import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class BrokenCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8535000, size.height * 0.8535000);
    path_1.lineTo(size.width * 0.1465000, size.height * 0.1465000);
    path_1.lineTo(size.width * 0.1110000, size.height * 0.1820000);
    path_1.lineTo(size.width * 0.2000000, size.height * 0.2705000);
    path_1.lineTo(size.width * 0.2000000, size.height * 0.7500000);
    path_1.cubicTo(
        size.width * 0.2000000,
        size.height * 0.7775000,
        size.width * 0.2225000,
        size.height * 0.8000000,
        size.width * 0.2500000,
        size.height * 0.8000000);
    path_1.lineTo(size.width * 0.7295000, size.height * 0.8000000);
    path_1.lineTo(size.width * 0.8185000, size.height * 0.8890000);
    path_1.lineTo(size.width * 0.8535000, size.height * 0.8535000);
    path_1.close();
    path_1.moveTo(size.width * 0.2500000, size.height * 0.7500000);
    path_1.lineTo(size.width * 0.2500000, size.height * 0.3205000);
    path_1.lineTo(size.width * 0.5205000, size.height * 0.5910000);
    path_1.lineTo(size.width * 0.4680000, size.height * 0.6570000);
    path_1.lineTo(size.width * 0.4000000, size.height * 0.5665000);
    path_1.lineTo(size.width * 0.3000000, size.height * 0.7000000);
    path_1.lineTo(size.width * 0.6295000, size.height * 0.7000000);
    path_1.lineTo(size.width * 0.6795000, size.height * 0.7500000);
    path_1.lineTo(size.width * 0.2500000, size.height * 0.7500000);
    path_1.close();
    path_1.moveTo(size.width * 0.3205000, size.height * 0.2500000);
    path_1.lineTo(size.width * 0.2705000, size.height * 0.2000000);
    path_1.lineTo(size.width * 0.7500000, size.height * 0.2000000);
    path_1.cubicTo(
        size.width * 0.7775000,
        size.height * 0.2000000,
        size.width * 0.8000000,
        size.height * 0.2225000,
        size.width * 0.8000000,
        size.height * 0.2500000);
    path_1.lineTo(size.width * 0.8000000, size.height * 0.7295000);
    path_1.lineTo(size.width * 0.7500000, size.height * 0.6795000);
    path_1.lineTo(size.width * 0.7500000, size.height * 0.2500000);
    path_1.lineTo(size.width * 0.3205000, size.height * 0.2500000);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xff838dab).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
