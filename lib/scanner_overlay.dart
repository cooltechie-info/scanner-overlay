library dotted_box;

import 'package:flutter/material.dart';
import 'package:scanner_overlay/overlay_painter.dart';

class ScannerOverlay extends StatelessWidget {
  /// Assertion is provided to prevent invisible color combinations & to avoid design glitches
  const ScannerOverlay({
    super.key,
    required this.height,
    required this.width,
    this.borderColor,
    this.borderThickness,
    this.borderRadius,
  }) : assert(borderColor != Colors.transparent &&
            (borderRadius ?? 20) < (height ?? 300) / 3);

  /// This is the height of the widget - [double]
  final double? height;

  /// This is the width of the widget - [double]
  final double? width;

  /// This is the border color of the widget - [Color]
  final Color? borderColor;

  /// This is the border thickness of the widget - [double]
  final double? borderThickness;

  /// This is the border radius of the widget - [double]
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      /// If the height variable is null, 300 is set
      height: height ?? 300,

      /// If the height variable is null, 300 is set
      width: width ?? 300,
      child: CustomPaint(
        painter: OverlayPainter(
          /// This is the border color
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
