import 'dart:ui';

import 'package:davidngwebsite/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(), // Apply custom behavior
        child: MyHomePage(),
      ),
    );
  }
}

class MyCustomScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    // You can conditionally apply different physics based on platform or device
    if (Theme.of(context).platform == TargetPlatform.macOS) {
      return BouncingScrollPhysics(); // Or a custom physics for Mac
    }
    return super.getScrollPhysics(context); // Default for other platforms
  }

  // You can also customize other aspects like drag devices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse, // Enable mouse dragging for web
    // Add other devices as needed
  };
}
