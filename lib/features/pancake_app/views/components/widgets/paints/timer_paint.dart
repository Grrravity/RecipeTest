import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class TimerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8352777, size.height * 0.2927512);
    path_0.lineTo(size.width * 0.8790779, size.height * 0.2554053);
    path_0.arcToPoint(Offset(size.width * 0.8174642, size.height * 0.2028709),
        radius: Radius.elliptical(
            size.width * 0.04359064, size.height * 0.03716719),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.lineTo(size.width * 0.7736640, size.height * 0.2402168);
    path_0.arcToPoint(Offset(size.width * 0.5156130, size.height * 0.1489070),
        radius:
            Radius.elliptical(size.width * 0.4675515, size.height * 0.3986539),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5156130, size.height * 0.07433439);
    path_0.lineTo(size.width * 0.5575271, size.height * 0.07433439);
    path_0.arcToPoint(
        Offset(size.width * 0.5577366, size.height * 2.645120e-17),
        radius: Radius.elliptical(
            size.width * 0.04359064, size.height * 0.03716719),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.3863779, size.height * 2.645120e-17);
    path_0.arcToPoint(Offset(size.width * 0.3863779, size.height * 0.07433439),
        radius: Radius.elliptical(
            size.width * 0.04359064, size.height * 0.03716719),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4282920, size.height * 0.07433439);
    path_0.lineTo(size.width * 0.4282920, size.height * 0.1489070);
    path_0.arcToPoint(Offset(size.width * 0.8350681, size.height * 0.2925725),
        radius:
            Radius.elliptical(size.width * 0.4720224, size.height * 0.4024659),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.4720224, size.height * 0.8780749);
    path_0.arcToPoint(Offset(size.width * 0.8569333, size.height * 0.5498839),
        radius:
            Radius.elliptical(size.width * 0.3849109, size.height * 0.3281911),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4720224, size.height * 0.8780749),
        radius:
            Radius.elliptical(size.width * 0.3853301, size.height * 0.3285485),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.moveTo(size.width * 0.74, size.height * 0.3281911);
    path_0.lineTo(size.width * 0.5, size.height * 0.55);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05588543;
    paint0Stroke.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff20cad1).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 16.81858, size.height * -553.5679);
    path_1.lineTo(size.width * 16.99679, size.height * -553.7338);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1397136;
    paint1Stroke.color = Color(0xff20cad1).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
