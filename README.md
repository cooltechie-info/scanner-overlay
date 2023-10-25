[![pub package](https://img.shields.io/badge/pub-0.0.1-blue.svg)](https://pub.dev/packages/scanner_overlay)

A Flutter package which will help you to overlay borders on the camera or scanner widget, highly customizable and flexible.

## Screenshots

<img src="https://github.com/cooltechie-info/scanner-overlay/blob/master/example/assets/scanner_overlay.png?raw=true" width="200">

## Features

- Highly customizable
- Easy to use

## Getting started

1. Add the dependency.

```yml
scanner_overlay: *latest-version*;
```

2. Import the package.

```Dart
import 'package:scanner_overlay/scanner_overlay.dart';
```

3. Use the widget in your code.

```Dart
ScannerOverlay(height: 300, width: 300),
```

## Usage

**This full code is from the example folder. You can run the example to see.**

```dart
import 'package:flutter/material.dart';
import 'package:scanner_overlay/scanner_overlay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ScannerOverlay(height: 300, width: 300),
          ],
        ),
      ),
    );
  }
}
```