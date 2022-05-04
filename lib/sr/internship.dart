import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Internship extends StatefulWidget {
  const Internship({required this.controller, Key? key}) : super(key: key);

  final Completer<WebViewController> controller;

  @override
  State<Internship> createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {
  var loadingPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebView(
          initialUrl: 'https://erovet.eu/resources/services/erovet-mobility-network/',
          onWebViewCreated: (webViewController) {
            widget.controller.complete(webViewController);
          },
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          // Add from here ...
          navigationDelegate: (navigation) {
            final host = Uri.parse(navigation.url).host;
            if (host.contains('youtube.com')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Blocking navigation to $host',
                  ),
                ),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          javascriptMode: JavascriptMode.unrestricted,        // Add this line
          javascriptChannels: _createJavascriptChannels(context),  // Add this line

        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }
}

// Add from here ...
Set<JavascriptChannel> _createJavascriptChannels(BuildContext context) {
  return {
    JavascriptChannel(
      name: 'SnackBar',
      onMessageReceived: (message) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message.message)));
      },
    ),
  };
}
// ... to here.
