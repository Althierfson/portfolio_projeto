import 'package:flutter/material.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color =  CustomColors.bottonBackGround
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
