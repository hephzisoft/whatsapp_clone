import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularBorder extends StatelessWidget {
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final int numSegments;
  final double spacing;
  final Widget child;

  const CircularBorder({
    super.key,
    required this.borderColor,
    required this.borderWidth,
    required this.radius,
    required this.numSegments,
    required this.child,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CircularBorderPainter(
        borderColor: borderColor,
        borderWidth: borderWidth,
        radius: radius,
        numSegments: numSegments,
        spacing: spacing,
      ),
      child: Container(
          padding:  EdgeInsets.all(5.h),
          width: 2 * radius,
          height: 2 * radius,
          child: child),
    );
  }
}

class _CircularBorderPainter extends CustomPainter {
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final int numSegments;
  final double spacing;

  _CircularBorderPainter({
    required this.borderColor,
    required this.borderWidth,
    required this.radius,
    required this.numSegments,
    required this.spacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final segmentAngle = 2 * pi / numSegments;
    final segmentSweep = segmentAngle - spacing / radius; // Adjust for spacing

    for (int i = 0; i < numSegments; i++) {
      final startAngle = i * segmentAngle;
      final paint = Paint()
        ..color = borderColor
        ..strokeWidth = borderWidth
        ..style = PaintingStyle.stroke;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        segmentSweep,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_CircularBorderPainter oldDelegate) =>
      oldDelegate.borderColor != borderColor ||
      oldDelegate.borderWidth != borderWidth ||
      oldDelegate.radius != radius ||
      oldDelegate.numSegments != numSegments ||
      oldDelegate.spacing != spacing;
}
