import 'package:flutter/material.dart';

class ScalePainter extends CustomPainter {
  final double widthMeasurement;
  final double heightMeasurement;

  ScalePainter(
      {required this.widthMeasurement, required this.heightMeasurement});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    // Draw horizontal scale
    for (double i = 0; i <= size.width; i += size.width / widthMeasurement) {
      canvas.drawLine(Offset(i, 0), Offset(i, 10), paint);
    }

    // Draw vertical scale
    for (double i = 0; i <= size.height; i += size.height / heightMeasurement) {
      canvas.drawLine(Offset(0, i), Offset(10, i), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
