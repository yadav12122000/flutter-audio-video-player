import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prac1/music.dart';
import 'package:prac1/onlinevideo.dart';
import 'package:prac1/localvideo.dart';
main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext co) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3,
          child: Scaffold(
           appBar: AppBar(
             title: Text("GEET"),
            bottom: TabBar(tabs: <Widget>[
              Tab(
               icon: Icon(Icons.switch_video),
              ),
               Tab(
               icon: Icon(Icons.music_video),
              ),
               Tab(
               icon: Icon(Icons.music_note),
              ),

            ] 
            ),
           ),
           body:
               TabBarView(children: [
                  OnLineVideo(),
                  LocalVideo(),
                   myMusic()
                  //  Text("lalit"),
                  //  Text("bjhv"),
                  //  Text("hv"),
  
                 ]),
             
           
         ),

       
       )
    );
  }
}