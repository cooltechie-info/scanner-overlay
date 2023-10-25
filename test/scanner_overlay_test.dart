import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:scanner_overlay/scanner_overlay.dart';

void main() {
  testWidgets('Run test', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: ScannerOverlay(height: 300, width: 300),
      ),
    ));

    expect(find.byType(ScannerOverlay), findsOneWidget);
  });
}
