import 'dart:math';

import 'package:flutter/material.dart';

class FunnyCircularIndicatorPainter extends CustomPainter {
  double currentOffsetDegree = 0;

  FunnyCircularIndicatorPainter({required this.currentOffsetDegree});

  @override
  void paint(Canvas canvas, Size size) {
    // print('value :: $currentOffsetDegree');

    var width = size.width;
    var height = size.height;

    var paint = Paint()
      ..strokeWidth = 24
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeCap = StrokeCap.round;

    final rect = Rect.fromCenter(
        center: Offset(width / 2, height / 2), width: width, height: height);

    if (currentOffsetDegree % pi * 2 == 0) {
      currentOffsetDegree = 0;
    }

    canvas.drawArc(
        rect,
        degreeToRadian(currentOffsetDegree + 120),
        degreeToRadian(currentOffsetDegree *
            sin(degreeToRadian(currentOffsetDegree) -
                sin(degreeToRadian(currentOffsetDegree)))),
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  degreeToRadian(double degree) {
    return degree * pi / 180;
  }
}
