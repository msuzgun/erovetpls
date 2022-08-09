import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview/sr/job1.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Job1App(),
    ),
  );
}

class Job1App extends StatefulWidget {
  const Job1App({Key? key}) : super(key: key);

  @override
  State<Job1App> createState() => _Job1AppState();
}

class _Job1AppState extends State<Job1App> {
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
      body: Job1(controller: controller),
    );
  }
}