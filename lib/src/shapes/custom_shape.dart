import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xFF2b2bd8)
      ..strokeWidth = 15;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromCenter(
              center: center, width: size.width, height: size.width),
          topLeft: Radius.elliptical(size.width / 2, size.height / 2),
          topRight: const Radius.circular(20),
          bottomLeft: Radius.elliptical(size.width / 2, size.height / 2),
          bottomRight: Radius.elliptical(size.width / 2, size.height / 2),
        ),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
