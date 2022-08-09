import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview/sr/job2.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Job2App(),
    ),
  );
}

class Job2App extends StatefulWidget {
  const Job2App({Key? key}) : super(key: key);

  @override
  State<Job2App> createState() => _Job2AppState();
}

class _Job2AppState extends State<Job2App> {
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
      body: Job2(controller: controller),
    );
  }
}