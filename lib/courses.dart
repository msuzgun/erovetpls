import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/courses.dart';

void main() {
  runApp(
    const MaterialApp(
      home: CoursesApp(),
    ),
  );
}

class CoursesApp extends StatefulWidget {
  const CoursesApp({Key? key}) : super(key: key);

  @override
  State<CoursesApp> createState() => _CoursesAppState();
}

class _CoursesAppState extends State<CoursesApp> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EROVET+'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller),                // Add this line
        ],
      ),
      body: Courses(controller: controller),
    );
  }
}