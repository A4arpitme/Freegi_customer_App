import 'package:flutter/material.dart';
import 'dart:math';

import 'package:freegi_app/utils/colors.dart';

class ArcPainter extends CustomPainter {
  final double totalValue;
  final double currentValue;
  final double spacing; // New spacing parameter

  ArcPainter({
    required this.totalValue,
    required this.currentValue,
    this.spacing = 4.0, // Default spacing of 10.0
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    // Paint for the filled circle with the custom spacing applied
    final fillPaint = Paint()
      ..color = AppColor.color_0EBBB6
      ..style = PaintingStyle.fill;

    // Draw the filled circle, reduced by the spacing value
    canvas.drawCircle(center, radius - spacing, fillPaint);

    // Paint for the arc
    final arcPaint = Paint()
      ..color = AppColor.color_0EBBB6
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    // Calculate the sweep angle for the arc
    final sweepAngle = (currentValue / totalValue) * 2 * pi;

    // Draw the arc based on the value provided
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2, // Start at the top
      sweepAngle,
      false,
      arcPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
