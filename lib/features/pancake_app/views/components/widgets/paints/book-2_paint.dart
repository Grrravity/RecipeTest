import 'dart:ui';

import 'package:flutter/material.dart';

//Auto-generated class from fluttershapemaker.com
class Book2CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9384681, size.height * 0.05745612);
    path_0.lineTo(size.width * 0.9407964, size.height * 0.05745612);
    path_0.arcToPoint(Offset(size.width * 0.9407964, 0),
        radius: Radius.elliptical(
            size.width * 0.03525611, size.height * 0.02874743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.1295733, 0);
    path_0.arcToPoint(
        Offset(size.width * 2.110088e-17, size.height * 0.1056526),
        radius:
            Radius.elliptical(size.width * 0.1297159, size.height * 0.1057689),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 2.110088e-17, size.height * 0.8749758);
    path_0.arcToPoint(Offset(size.width * 0.1295733, size.height * 0.9806284),
        radius:
            Radius.elliptical(size.width * 0.1297159, size.height * 0.1057689),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8466217, size.height * 0.9806284);
    path_0.arcToPoint(Offset(size.width * 0.9761950, size.height * 0.8749758),
        radius:
            Radius.elliptical(size.width * 0.1297159, size.height * 0.1057689),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.9761950, size.height * 0.2595792);
    path_0.arcToPoint(Offset(size.width * 0.9384681, size.height * 0.1851149),
        radius:
            Radius.elliptical(size.width * 0.1291932, size.height * 0.1053427),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.1295733, size.height * 0.05745612);
    path_0.lineTo(size.width * 0.8680034, size.height * 0.05745612);
    path_0.lineTo(size.width * 0.8680034, size.height * 0.1553214);
    path_0.arcToPoint(Offset(size.width * 0.8466217, size.height * 0.1538491),
        radius:
            Radius.elliptical(size.width * 0.1302860, size.height * 0.1062338),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.1295733, size.height * 0.1538491);
    path_0.arcToPoint(Offset(size.width * 0.1295733, size.height * 0.05745612),
        radius: Radius.elliptical(
            size.width * 0.05910862, size.height * 0.04819651),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.9057303, size.height * 0.8749370);
    path_0.arcToPoint(Offset(size.width * 0.8466217, size.height * 0.9231335),
        radius: Radius.elliptical(
            size.width * 0.05915613, size.height * 0.04823525),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.1295733, size.height * 0.9231335);
    path_0.arcToPoint(Offset(size.width * 0.07046470, size.height * 0.8749370),
        radius: Radius.elliptical(
            size.width * 0.05915613, size.height * 0.04823525),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.07046470, size.height * 0.1996823);
    path_0.arcToPoint(Offset(size.width * 0.1295733, size.height * 0.2113053),
        radius:
            Radius.elliptical(size.width * 0.1287656, size.height * 0.1049940),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8466217, size.height * 0.2113053);
    path_0.arcToPoint(Offset(size.width * 0.8807374, size.height * 0.2201774),
        radius: Radius.elliptical(
            size.width * 0.05882353, size.height * 0.04796405),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.8815927,
        size.height * 0.2207586,
        size.width * 0.8824480,
        size.height * 0.2213010,
        size.width * 0.8833508,
        size.height * 0.2218047);
    path_0.arcToPoint(Offset(size.width * 0.9057303, size.height * 0.2595018),
        radius: Radius.elliptical(
            size.width * 0.05901359, size.height * 0.04811902),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.9057303, size.height * 0.8749370);

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.02375748;
    paint0Stroke.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.04751497, size.height * 0.1789160);
    path_1.lineTo(size.width * 0.9001711, size.height * 0.1866646);
    path_1.lineTo(size.width * 0.9429345, size.height * 0.2649645);
    path_1.lineTo(size.width * 0.9221705, size.height * 0.9179420);
    path_1.lineTo(size.width * 0.8710919, size.height * 0.9573438);
    path_1.lineTo(size.width * 0.06557065, size.height * 0.9486653);
    path_1.lineTo(size.width * 0.02689347, size.height * 0.8681182);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint1Stroke.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 4.248646, size.height * 6.579017);
    path_2.cubicTo(
        size.width * 4.245367,
        size.height * 6.579017,
        size.width * 4.242089,
        size.height * 6.579017,
        size.width * 4.238810,
        size.height * 6.579249);
    path_2.arcToPoint(Offset(size.width * 3.994346, size.height * 6.579249),
        radius:
            Radius.elliptical(size.width * 0.1672052, size.height * 0.1363372),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.quadraticBezierTo(size.width * 3.989594, size.height * 6.579017,
        size.width * 3.984510, size.height * 6.579017);
    path_2.arcToPoint(Offset(size.width * 3.949254, size.height * 6.848824),
        radius:
            Radius.elliptical(size.width * 0.1673477, size.height * 0.1364535),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 3.949254, size.height * 6.995467);
    path_2.arcToPoint(Offset(size.width * 3.984510, size.height * 7.024214),
        radius: Radius.elliptical(
            size.width * 0.03520859, size.height * 0.02870869),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 4.248693, size.height * 7.024214);
    path_2.arcToPoint(Offset(size.width * 4.283949, size.height * 6.995467),
        radius: Radius.elliptical(
            size.width * 0.03525611, size.height * 0.02874743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 4.283949, size.height * 6.848824);
    path_2.arcToPoint(Offset(size.width * 4.248693, size.height * 6.579017),
        radius:
            Radius.elliptical(size.width * 0.1673477, size.height * 0.1364535),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.close();
    path_2.moveTo(size.width * 4.019766, size.height * 6.966758);
    path_2.lineTo(size.width * 4.019766, size.height * 6.931890);
    path_2.lineTo(size.width * 4.213485, size.height * 6.931890);
    path_2.lineTo(size.width * 4.213485, size.height * 6.966758);
    path_2.close();
    path_2.moveTo(size.width * 4.248693, size.height * 6.794429);
    path_2.arcToPoint(Offset(size.width * 4.213437, size.height * 6.823176),
        radius: Radius.elliptical(
            size.width * 0.03525611, size.height * 0.02874743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.lineTo(size.width * 4.213437, size.height * 6.874472);
    path_2.lineTo(size.width * 4.019766, size.height * 6.874472);
    path_2.lineTo(size.width * 4.019766, size.height * 6.823176);
    path_2.arcToPoint(Offset(size.width * 3.984510, size.height * 6.794429),
        radius: Radius.elliptical(
            size.width * 0.03520859, size.height * 0.02870869),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.arcToPoint(Offset(size.width * 3.984510, size.height * 6.636473),
        radius: Radius.elliptical(
            size.width * 0.09683550, size.height * 0.07895858),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 4.002708, size.height * 6.637868),
        radius: Radius.elliptical(
            size.width * 0.09816592, size.height * 0.08004339),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 4.037869, size.height * 6.626245),
        radius: Radius.elliptical(
            size.width * 0.03525611, size.height * 0.02874743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.arcToPoint(Offset(size.width * 4.195334, size.height * 6.626245),
        radius: Radius.elliptical(
            size.width * 0.09678799, size.height * 0.07891984),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 4.230495, size.height * 6.637868),
        radius: Radius.elliptical(
            size.width * 0.03520859, size.height * 0.02870869),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.arcToPoint(Offset(size.width * 4.248693, size.height * 6.636473),
        radius: Radius.elliptical(
            size.width * 0.09797586, size.height * 0.07988842),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(size.width * 4.248693, size.height * 6.794429),
        radius: Radius.elliptical(
            size.width * 0.09683550, size.height * 0.07895858),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_2.close();
    path_2.moveTo(size.width * 4.248693, size.height * 6.794429);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
