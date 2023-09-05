import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xffE64444);
    path = Path();
    path.lineTo(0, size.height * 0.07);
    path.cubicTo(
        0, size.height * 0.02, size.width * 0.07, -0.01, size.width * 0.13, 0);
    path.cubicTo(size.width * 0.13, 0, size.width * 0.94, size.height * 0.23,
        size.width * 0.94, size.height * 0.23);
    path.cubicTo(size.width * 0.98, size.height * 0.24, size.width,
        size.height * 0.26, size.width, size.height * 0.29);
    path.cubicTo(size.width, size.height * 0.29, size.width, size.height * 0.93,
        size.width, size.height * 0.93);
    path.cubicTo(size.width, size.height * 0.97, size.width * 0.96, size.height,
        size.width * 0.91, size.height);
    path.cubicTo(size.width * 0.91, size.height, size.width * 0.09, size.height,
        size.width * 0.09, size.height);
    path.cubicTo(size.width * 0.04, size.height, 0, size.height * 0.97, 0,
        size.height * 0.93);
    path.cubicTo(
        0, size.height * 0.93, 0, size.height * 0.07, 0, size.height * 0.07);
    path.cubicTo(
        0, size.height * 0.07, 0, size.height * 0.07, 0, size.height * 0.07);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
