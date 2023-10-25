library dotted_box;

import 'package:flutter/material.dart';
import 'package:scanner_overlay/overlay_painter.dart';

class ScannerOverlay extends StatelessWidget {
  const ScannerOverlay({
    super.key,
    required this.height,
    required this.width,
    this.borderColor,
    this.borderThickness,
    this.borderRadius,
  }) : assert(borderColor != Colors.transparent &&
            (borderRadius ?? 20) < (height ?? 300) / 3);

  final double? height;
  final double? width;
  final Color? borderColor;
  final double? borderThickness;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 300,
      width: width ?? 300,
      child: CustomPaint(
        painter: OverlayPainter(
          paintColor: borderColor ?? Colors.blue,
          shadowColor: Colors.white,
          isDark: false,
          borderRadius: borderRadius,
          borderThickness: borderThickness,
        ),
      ),
    );
  }
}
