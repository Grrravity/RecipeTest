import 'dart:ui';

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class CaloriesCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 4.911334, size.height * 0.3385882);
    path_0.arcToPoint(Offset(size.width * 4.765373, size.height * 0.1637647),
        radius:
            Radius.elliptical(size.width * 0.9169306, size.height * 0.7324118),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 4.716032, size.height * 0.1618824),
        radius: Radius.elliptical(
            size.width * 0.03446498, size.height * 0.02752941),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 4.554017, size.height * 0.2828824);
    path_0.lineTo(size.width * 4.554017, size.height * 0.02941176);
    path_0.arcToPoint(Offset(size.width * 4.497975, size.height * 0.003941176),
        radius: Radius.elliptical(
            size.width * 0.03799985, size.height * 0.03035294),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 4.124015, size.height * 0.3318235),
        radius:
            Radius.elliptical(size.width * 1.063628, size.height * 0.8495882),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 4.053465, size.height * 0.5705882),
        radius:
            Radius.elliptical(size.width * 0.6867221, size.height * 0.5485294),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 4.515502, size.height * 0.9405294),
        radius:
            Radius.elliptical(size.width * 0.4631416, size.height * 0.3699412),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 4.651594, size.height * 0.9241765),
        radius:
            Radius.elliptical(size.width * 0.5016570, size.height * 0.4007059),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 4.895132,
        size.height * 0.8750000,
        size.width * 5.084100,
        size.height * 0.6352941,
        size.width * 4.911334,
        size.height * 0.3385882);
    path_0.close();
    path_0.moveTo(size.width * 4.408940, size.height * 0.8000000);
    path_0.arcToPoint(Offset(size.width * 4.515576, size.height * 0.6552353),
        radius:
            Radius.elliptical(size.width * 0.2464099, size.height * 0.1968235),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 4.622137, size.height * 0.8000000),
        radius:
            Radius.elliptical(size.width * 0.2601812, size.height * 0.2078235),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 4.408940, size.height * 0.8000000),
        radius:
            Radius.elliptical(size.width * 0.1065616, size.height * 0.08511765),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 4.675381, size.height * 0.8581176);
    path_0.cubicTo(
        size.width * 4.728110,
        size.height * 0.7655294,
        size.width * 4.640842,
        size.height * 0.6536471,
        size.width * 4.535459,
        size.height * 0.5980588);
    path_0.arcToPoint(Offset(size.width * 4.498638, size.height * 0.5974118),
        radius: Radius.elliptical(
            size.width * 0.03446498, size.height * 0.02752941),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 4.388762,
        size.height * 0.6499412,
        size.width * 4.302821,
        size.height * 0.7653529,
        size.width * 4.355696,
        size.height * 0.8581176);
    path_0.arcToPoint(Offset(size.width * 4.122469, size.height * 0.5705882),
        radius:
            Radius.elliptical(size.width * 0.3945799, size.height * 0.3151765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 4.122469,
        size.height * 0.3705882,
        size.width * 4.286030,
        size.height * 0.1958824,
        size.width * 4.484866,
        size.height * 0.07805882);
    path_0.lineTo(size.width * 4.484866, size.height * 0.3462941);
    path_0.arcToPoint(Offset(size.width * 4.542897, size.height * 0.3665294),
        radius: Radius.elliptical(
            size.width * 0.03453863, size.height * 0.02758824),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 4.736726, size.height * 0.2218824);
    path_0.arcToPoint(Offset(size.width * 4.908535, size.height * 0.5705882),
        radius:
            Radius.elliptical(size.width * 0.6806098, size.height * 0.5436471),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 4.675307, size.height * 0.8581176),
        radius:
            Radius.elliptical(size.width * 0.3945799, size.height * 0.3151765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0Stroke.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
