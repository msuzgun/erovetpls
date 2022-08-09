import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'main.dart';
import 'sr/menu.dart';                                // Add this import
import 'sr/navigation_controls.dart';
import 'sr/web_view_stack.dart';
import 'job1ap.dart';
import 'package:webview/job2ap.dart';
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
    return MaterialApp(
      title: 'Job Pool',
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,

          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                new Image.network(
                    'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_480/https://erovet.eu/wp-content/uploads/2020/02/LOGO-EROVET-480x144.jpg'),
                SizedBox(height: 30),

                Flexible(
                  flex: 2,
                  fit: FlexFit.tight ,
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.9,
                    height: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Job1App()));
                      },
                      icon: Icon(
                        Icons.app_registration, color: Colors.white, size: 42.0,),
                      label: Text('Register '),
                      style: ElevatedButton.styleFrom(primary: Colors.indigo,
                        textStyle: const TextStyle(fontSize: 30),),
                    ),),
                ),
                SizedBox(height: 20),

                Flexible(
                  flex: 2,
                  fit: FlexFit.tight ,
                  child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.9,
                      height: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Job2App()));
                        },
                        icon: Icon(
                          Icons.local_offer, color: Colors.white,
                          size: 42.0,),
                        label: Text('View Offer'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent,
                          textStyle: const TextStyle(fontSize: 30),),
                      )
                  ),
                ),
                SizedBox(height: 20),

                Flexible(
                  flex: 1,
                  fit: FlexFit.tight ,
                  child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.9,
                      height: MediaQuery
                          .of(context)
                          .size
                          .width * 0.2,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AnaSayfa()));
                        },
                        icon: Icon(
                          Icons.arrow_back, color: Colors.white,
                          size: 42.0,),
                        label: Text('Back'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          textStyle: const TextStyle(fontSize: 30),),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
