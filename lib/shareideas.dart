import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/shareideas_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ShareIdeasPageApp(),
    ),
  );
}

class ShareIdeasPageApp extends StatefulWidget {
  const ShareIdeasPageApp({Key? key}) : super(key: key);

  @override
  State<ShareIdeasPageApp> createState() => _ShareIdeasPageAppState();
}

class _ShareIdeasPageAppState extends State<ShareIdeasPageApp> {
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
      body: ShareIdeasPage(controller: controller),
    );
  }
}