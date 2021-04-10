import 'dart:ui';

import 'package:flutter/material.dart';

class DashboardCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.stroke;
    paint0Fill.strokeWidth = 2;
    paint0Fill.color = Color(0xff838dab).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.5267229, 0, size.width * 0.4732771,
                size.height * 0.4721086),
            bottomRight: Radius.circular(size.width * 0.1546910),
            bottomLeft: Radius.circular(size.width * 0.1546910),
            topLeft: Radius.circular(size.width * 0.1546910),
            topRight: Radius.circular(size.width * 0.1546910)),
        paint0Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.stroke;
    paint2Fill.strokeWidth = 2;
    paint2Fill.color = Color(0xff838dab).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.5267229, size.height * 0.5278914,
                size.width * 0.4732771, size.height * 0.4721086),
            bottomRight: Radius.circular(size.width * 0.1546910),
            bottomLeft: Radius.circular(size.width * 0.1546910),
            topLeft: Radius.circular(size.width * 0.1546910),
            topRight: Radius.circular(size.width * 0.1546910)),
        paint2Fill);

    Paint paint4Fill = Paint()..style = PaintingStyle.stroke;
    paint4Fill.strokeWidth = 2;
    paint4Fill.color = Color(0xff838dab).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0, size.height * 0.5278914, size.width * 0.4732771,
                size.height * 0.4721086),
            bottomRight: Radius.circular(size.width * 0.1546910),
            bottomLeft: Radius.circular(size.width * 0.1546910),
            topLeft: Radius.circular(size.width * 0.1546910),
            topRight: Radius.circular(size.width * 0.1546910)),
        paint4Fill);

    Paint paint6Fill = Paint()..style = PaintingStyle.stroke;
    paint6Fill.strokeWidth = 2;
    paint6Fill.color = Color(0xff838dab).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(
                0, 0, size.width * 0.4732771, size.height * 0.4721086),
            bottomRight: Radius.circular(size.width * 0.1546910),
            bottomLeft: Radius.circular(size.width * 0.1546910),
            topLeft: Radius.circular(size.width * 0.1546910),
            topRight: Radius.circular(size.width * 0.1546910)),
        paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
