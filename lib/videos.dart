import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/Video.dart';

void main() {
  runApp(
    const MaterialApp(
      home: VideosApp(),
    ),
  );
}

class VideosApp extends StatefulWidget {
  const VideosApp({Key? key}) : super(key: key);

  @override
  State<VideosApp> createState() => _VideosAppState();
}

class _VideosAppState extends State<VideosApp> {
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
      body: Videos(controller: controller),
    );
  }
}