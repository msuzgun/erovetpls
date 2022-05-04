import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/internship.dart';

void main() {
  runApp(
    const MaterialApp(
      home: InternshipApp(),
    ),
  );
}

class InternshipApp extends StatefulWidget {
  const InternshipApp({Key? key}) : super(key: key);

  @override
  State<InternshipApp> createState() => _InternshipAppState();
}

class _InternshipAppState extends State<InternshipApp> {
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
      body: Internship(controller: controller),
    );
  }
}