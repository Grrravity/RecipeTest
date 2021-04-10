import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class HeartCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4736454, size.height * 0.9410830);
    path_0.arcToPoint(Offset(size.width * 0.4370124, size.height * 0.9257210),
        radius: Radius.elliptical(
            size.width * 0.05555556, size.height * 0.06203649),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.3987455,
        size.height * 0.8883461,
        size.width * 0.3618490,
        size.height * 0.8532666,
        size.width * 0.3292747,
        size.height * 0.8222484);
    path_0.arcToPoint(Offset(size.width * 0.09398060, size.height * 0.5756327),
        radius:
            Radius.elliptical(size.width * 2.003373, size.height * 2.237081),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(
        Offset(size.width * -2.340761e-17, size.height * 0.3178340),
        radius:
            Radius.elliptical(size.width * 0.3525722, size.height * 0.3937022),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.07516340, size.height * 0.09211301),
        radius:
            Radius.elliptical(size.width * 0.2960679, size.height * 0.3306062),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(
        Offset(size.width * 0.2646532, size.height * 7.841481e-17),
        radius:
            Radius.elliptical(size.width * 0.2547438, size.height * 0.2844614),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4134514, size.height * 0.05738670),
        radius:
            Radius.elliptical(size.width * 0.2382985, size.height * 0.2660977),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4736454, size.height * 0.1275456),
        radius:
            Radius.elliptical(size.width * 0.3045014, size.height * 0.3400235),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5338393, size.height * 0.05738670),
        radius:
            Radius.elliptical(size.width * 0.3045541, size.height * 0.3400824),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(
        Offset(size.width * 0.6826903, size.height * 7.188024e-17),
        radius:
            Radius.elliptical(size.width * 0.2382985, size.height * 0.2660977),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8721801, size.height * 0.09211301),
        radius:
            Radius.elliptical(size.width * 0.2547438, size.height * 0.2844614),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9472907, size.height * 0.3178340),
        radius:
            Radius.elliptical(size.width * 0.2960679, size.height * 0.3306062),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8533629, size.height * 0.5756327),
        radius:
            Radius.elliptical(size.width * 0.3525722, size.height * 0.3937022),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6181742, size.height * 0.8221307),
        radius:
            Radius.elliptical(size.width * 2.002952, size.height * 2.236610),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.5855471,
        size.height * 0.8531489,
        size.width * 0.5485979,
        size.height * 0.8883461,
        size.width * 0.5102783,
        size.height * 0.9257799);
    path_0.arcToPoint(Offset(size.width * 0.4736454, size.height * 0.9410830),
        radius: Radius.elliptical(
            size.width * 0.05560826, size.height * 0.06209535),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.2646532, size.height * 0.06197763);
    path_0.arcToPoint(Offset(size.width * 0.1159604, size.height * 0.1340789),
        radius:
            Radius.elliptical(size.width * 0.1998735, size.height * 0.2231901),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.05550285, size.height * 0.3178340),
        radius:
            Radius.elliptical(size.width * 0.2408286, size.height * 0.2689229),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1366751, size.height * 0.5360212),
        radius:
            Radius.elliptical(size.width * 0.2966477, size.height * 0.3312537),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.3651170, size.height * 0.7749264),
        radius:
            Radius.elliptical(size.width * 1.971326, size.height * 2.201295),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.3977968,
        size.height * 0.8060035,
        size.width * 0.4348514,
        size.height * 0.8412596,
        size.width * 0.4733818,
        size.height * 0.8789288);
    path_0.cubicTo(
        size.width * 0.5121758,
        size.height * 0.8412007,
        size.width * 0.5492832,
        size.height * 0.8058858,
        size.width * 0.5820156,
        size.height * 0.7747499);
    path_0.arcToPoint(Offset(size.width * 0.8104575, size.height * 0.5359035),
        radius:
            Radius.elliptical(size.width * 1.971748, size.height * 2.201766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8918406, size.height * 0.3178340),
        radius:
            Radius.elliptical(size.width * 0.2967004, size.height * 0.3313125),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8313831, size.height * 0.1340200),
        radius:
            Radius.elliptical(size.width * 0.2408286, size.height * 0.2689229),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6826903, size.height * 0.06185992),
        radius:
            Radius.elliptical(size.width * 0.1998208, size.height * 0.2231313),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5677841, size.height * 0.1062978),
        radius:
            Radius.elliptical(size.width * 0.1840607, size.height * 0.2055327),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5037424, size.height * 0.1891112),
        radius:
            Radius.elliptical(size.width * 0.2692916, size.height * 0.3007063),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4435484, size.height * 0.1891112),
        radius: Radius.elliptical(
            size.width * 0.03505166, size.height * 0.03914067),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3795066, size.height * 0.1063567),
        radius:
            Radius.elliptical(size.width * 0.2688172, size.height * 0.3001766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2646532, size.height * 0.06197763),
        radius:
            Radius.elliptical(size.width * 0.1840080, size.height * 0.2054738),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.2646532, size.height * 0.06197763);

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
