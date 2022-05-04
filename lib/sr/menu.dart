import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum _MenuOptions {
  navigationDelegate,
  userAgent,
  javascriptChannel,                                    // Add this line
// Add this line

}

class Menu extends StatelessWidget {
  const Menu({required this.controller, Key? key}) : super(key: key);

  final Completer<WebViewController> controller;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: controller.future,
      builder: (context, controller) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (value) async {
            switch (value) {
              case _MenuOptions.navigationDelegate:
                controller.data!.loadUrl('https://erovet.eu');
                break;
              case _MenuOptions.userAgent:
                final userAgent = await controller.data!
                    .runJavascriptReturningResult('navigator.userAgent');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(userAgent),
                ));
                break;
            // Add from here ...
              case _MenuOptions.javascriptChannel:
                await controller.data!.runJavascript('''
                                                      var req = new XMLHttpRequest();
                                                      req.open('GET', "https://api.ipify.org/?format=json");
                                                      req.onload = function() {
                                                        if (req.status == 200) {
                                                          let response = JSON.parse(req.responseText);
                                                          SnackBar.postMessage("IP Address: " + response.ip);
                                                        } else {
                                                          SnackBar.postMessage("Error: " + req.status);
                                                        }
                                                      }
                                                      req.send();''');
                break;
            // ... to here.
            }
          },

          itemBuilder: (context) => [
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.navigationDelegate,
              child: Text('Home'),
            ),
            // Add from here ...
         /*   const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.javascriptChannel,
              child: Text('Lookup IP Address'),
            ),*/
            // ... to here.
          ],
        );
      },
    );
  }
}