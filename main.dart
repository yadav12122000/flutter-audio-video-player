import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:video_player/video_player.dart';
void main() {
  runApp(MyApp());
}
//VideoPlayer videoPlayer = VideoPlayer();
AudioPlayer audioPlayer = AudioPlayer();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note)),
                Tab(icon: Icon(Icons.video_library)),
                
              ],
            ),
            title: Text('Lyrics'),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 80,
                    color: Colors.amber,
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                       onPressed:(){
                    audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                    },
                      color: Colors.blue,
                       child: Text("play",
                       style: TextStyle(
                         fontSize: 26,
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                      ),
                      
                  ),
                   Container(
                    width: 180,
                    height: 80,
                    color: Colors.amber,
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      onPressed:(){ audioPlayer.pause();},
                      color: Colors.blue,
                       child: Text("resume",
                       style: TextStyle(
                         fontSize: 26,
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                      ),
                      
                  ),
                   Container(
                    width: 180,
                    height: 80,
                    color: Colors.amber,
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                     onPressed:(){ audioPlayer.pause();},
                      color: Colors.blue,
                      child: Text("stop",
                      style: TextStyle(
                         fontSize: 26,
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                      ),
                      
                  ),
                Container(
                    width: 180,
                    height: 80,
                    color: Colors.amber,
                    
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                       onPressed: ()
                    {
                       print("playing");
                       var audio = AudioCache();
                       audio.play('bille.mp3');

                    },
                      color: Colors.blue,
                       child: Text("local",
                       style: TextStyle(
                         fontSize: 26,
                         fontWeight: FontWeight.bold,
                       ),
                       ),
                      ),
                      
                  ),
                ],
              ),
               Column(
                 children: <Widget>[
                   Container(
                        width: 180,
                        height: 80,
                        color: Colors.amber,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: RaisedButton(
                           onPressed: () 
                           {  print("video");
                              VideoPlayerController.network("dataSource").play();
                           },
                          color: Colors.blue,
                           child: Text("video",
                           style: TextStyle(
                             fontSize: 26,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                          ),
                          
                      ),
                 
                 Container(
                        width: 180,
                        height: 80,
                        color: Colors.amber,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: RaisedButton(
                           onPressed: () => VideoPlayerController.network("dataSource").pause(),
                        
                          color: Colors.blue,
                           child: Text("pause",
                           style: TextStyle(
                             fontSize: 26,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                          ),
                          
                      ),
                 ],
               ),
              
            ],
          ),
        ),
      ),
    );
  }
}