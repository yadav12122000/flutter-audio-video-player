import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioPlayer audioPlayer = AudioPlayer();

myMusic(){
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 40,
              child: Text("My Library",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
            Container(
              width: 400,
              height: 100,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed:(){
                      audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                      },
                      color: Colors.cyan,
                      child: Icon(Icons.play_arrow,color: Colors.pink,size: 36,),
                      padding: EdgeInsets.all(10),
                      
                    
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed:(){ audioPlayer.pause();},

                      color: Colors.cyan,
                      child: Icon(Icons.pause,color: Colors.pink,size: 36,),
                      padding: EdgeInsets.all(10),
                      
                    
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed:(){ audioPlayer.stop();},

                      color: Colors.cyan,
                      child: Icon(Icons.stop,color: Colors.pink,size: 36,),
                      padding: EdgeInsets.all(10),
                      textColor: Colors.orange,
                    
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed:(){ audioPlayer.resume();},

                      color: Colors.cyan,
                      child: Icon(Icons.replay,color: Colors.pink,size: 36,),
                      padding: EdgeInsets.all(10),
                      textColor: Colors.orange,
                    
                      ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              child: Text("LOCAL",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              )),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed: ()
                      {
                      
                         var audio = AudioCache();
                         audio.play('bille.mp3');
                      },
                      color: Colors.cyan,
                      child: Icon(Icons.play_arrow,color: Colors.pink,size: 36,),
    
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    
                    child: RaisedButton(
                      onPressed:() {
                        audioPlayer.play("assets/bille.mp3", isLocal: true);
                     },
                    
                      color: Colors.cyan,
                      child: Icon(Icons.library_music,color: Colors.pink,size: 36,),
                      padding: EdgeInsets.all(10),
                    
                    
                      ),
                  ), 
                ],
              ),
            ),
          ],
        
        );
}