import 'package:flutter/material.dart';

class OverlayPainter extends CustomPainter {
  OverlayPainter({
    required this.paintColor,
    required this.shadowColor,
    this.isDark,
    this.borderThickness,
    this.borderRadius,
  });
  final Color paintColor;
  final Color shadowColor;
  final bool? isDark;
  final double? borderThickness;
  final double? borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = paintColor
      ..strokeWidth = borderThickness ?? 5.0
      ..style = PaintingStyle.stroke;
    double radius = borderRadius ?? 20;
    double sideVal = 30 + (borderThickness ?? 5.0);

    Path path = Path()
      ..moveTo(radius, 0)
      ..close()
      ..moveTo(size.width - radius - sideVal, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      ..moveTo(size.width, radius)
      ..lineTo(size.width, radius + sideVal)
      ..close();

    Path pathBr = Path()
      ..moveTo(size.width, size.height - radius - sideVal)
      ..lineTo(size.width, size.height - radius)
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      ..moveTo(size.width - radius, size.height)
      ..lineTo(size.width - radius - sideVal, size.height)
      ..close();

    Path pathBl = Path()
      ..moveTo(radius + sideVal, size.height)
      ..lineTo(radius, size.height)
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius))
      ..moveTo(0, size.height - radius)
      ..lineTo(0, size.height - radius - sideVal)
      ..close();

    Path pathTl = Path()
      ..moveTo(0, radius + sideVal)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..moveTo(radius, 0)
      ..lineTo(radius + sideVal, 0)
      ..close();

    canvas.drawPath(path, paint);
    canvas.drawPath(pathBr, paint);
    canvas.drawPath(pathBl, paint);
    canvas.drawPath(pathTl, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
