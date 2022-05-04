import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
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
      body: WebViewStack(controller: controller),
    );
  }
}