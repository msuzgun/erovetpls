import 'package:flutter/material.dart';
import 'package:webview/courses.dart';
import 'package:webview/shareideas.dart';
import 'package:webview/sr/courses.dart';
import 'package:webview/sr/shareideas_page.dart';
import 'package:webview/internship.dart';
import 'package:webview/sr/video.dart';
import 'package:webview/videos.dart';

//import 'courses.dart';
import 'jobpool.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}
void main() {
  runApp(
    const MaterialApp(
      home: AnaSayfa(),
    ),
  );
}
class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(

        body: Container(
          alignment: Alignment.center,

          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),

          child: Center(

            child: Column(
              children: [

                new Image.network(
                    'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_480/https://erovet.eu/wp-content/uploads/2020/02/LOGO-EROVET-480x144.jpg'),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.2,
                  child:   ElevatedButton.icon(
                    onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewApp()));},
                    icon: Icon( Icons.cases_sharp, color: Colors.white, size: 42.0,),
                    label: Text('Job Pool'),
                    style: ElevatedButton.styleFrom(primary: Colors.indigo,textStyle: const TextStyle(fontSize: 30),),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height:MediaQuery.of(context).size.width * 0.2,
                    child:ElevatedButton.icon(
                      onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InternshipApp()));},
                      icon: Icon( Icons.change_circle_outlined, color: Colors.white, size: 42.0,),
                      label: Text('Internships Abroad'),
                      style: ElevatedButton.styleFrom(primary: Colors.amberAccent,textStyle: const TextStyle(fontSize: 30),),
                    )
                )
                ,
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height:MediaQuery.of(context).size.width * 0.2,
                  child:
                  ElevatedButton.icon(
                    onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VideosApp()));},
                    icon: Icon( Icons.play_arrow_outlined, color: Colors.white, size: 42.0,),
                    label: Text('Video Testimonies'),
                    style: ElevatedButton.styleFrom(primary: Colors.red,textStyle: const TextStyle(fontSize: 30),),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height:MediaQuery.of(context).size.width * 0.2,
                  child:
                  ElevatedButton.icon(
                    onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShareIdeasPageApp()));},
                    icon: Icon( Icons.share, color: Colors.white, size: 42.0,),
                    label: Text('Share Your Ideas'),
                    style: ElevatedButton.styleFrom(primary: Colors.black,textStyle: const TextStyle(fontSize: 30),),
                  ),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height:MediaQuery.of(context).size.width * 0.2,
                  child:
                  ElevatedButton.icon(
                    onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CoursesApp()));},
                    icon: Icon( Icons.cast_for_education_outlined, color: Colors.white, size: 42.0,),
                    label: Text('Courses'),
                    style: ElevatedButton.styleFrom(primary: Colors.green,textStyle: const TextStyle(fontSize: 30)),
                  ),),
              ],
            ),
          ),
        ),
      )

    );

  }
}
