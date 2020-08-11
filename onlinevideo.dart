import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController videoPlayerController;
Future<void> initializePlayer;
// VideoPlayerController videoPlayerController2;
// Future<void> initializePlayer2;

class OnLineVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return VideoPlayerScreen();
    
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key:key); 
  @override
  VideoPlayerScreenState createState() => VideoPlayerScreenState();
}

class VideoPlayerScreenState extends State<VideoPlayerScreen>{
    build(BuildContext c) {
    return Container(
       child: Column(children: <Widget>[
          Center(
                  child: FutureBuilder(
                      future: initializePlayer,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Container(
                                child: VideoPlayer(videoPlayerController)),
                          );
                        } else {
                          return AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Card(
                              child: Container(
                                color: Colors.black87,
                              ),
                             
                            ),
                          );
                        }
                      }
                     )
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                    ),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber
                      ),
              
                      child: Row(
                        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Card(
               color: Colors.cyan,
                              child: IconButton(icon: Icon(Icons.play_arrow), onPressed: () {
                             setState(() {});
                              videoPlayerController = VideoPlayerController.network(
                                'https://media.istockphoto.com/videos/time-lapse-city-traffic-at-night-video-id452029403');

                               initializePlayer = videoPlayerController.initialize();
                               videoPlayerController.setVolume(1.0);
                               videoPlayerController.play();
                             },
                             iconSize: 36.0,
                             ),
             ),
              
                         Card(
                           color: Colors.cyan,
                               child: IconButton(icon: Icon(Icons.pause), onPressed: () {
                           setState(() {});
                              
                               videoPlayerController.pause();
                           },
                           iconSize: 36.0,
                           ),
                         ),
                          
            ],
          ),
                    ),
                  //   Center(
                  // child: FutureBuilder(
                  //     future: initializePlayer2,
                  //     builder: (context, snapshot) {
                  //       if (snapshot.connectionState == ConnectionState.done) {
                  //         return AspectRatio(
                  //           aspectRatio: 16 / 9,
                  //           child: Container(
                  //               child: VideoPlayer(videoPlayerController2)),
                  //         );
                  //       } else {
                  //         return AspectRatio(
                  //           aspectRatio: 16 / 9,
                  //           child: Card(
                  //             child: Container(
                  //               color: Colors.black87,
                  //             ),
                             
                  //           ),
                  //         );
                  //       }
                  //     }
                  //    )
                  //   ),
          // Container(
          //   padding: EdgeInsets.only(bottom: 2),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: <Widget>[
          //      IconButton(icon: Icon(Icons.play_arrow), onPressed: () {
          //                setState(() {});
          //                 videoPlayerController2 = VideoPlayerController.network(
          //                   'https://media.istockphoto.com/videos/time-lapse-city-traffic-at-night-video-id452029403');

          //                  initializePlayer2 = videoPlayerController2.initialize();
          //                  videoPlayerController2.setVolume(1.0);
          //                  videoPlayerController2.play();
          //                },
          //                iconSize: 16.0,
          //                ),
              
          //         IconButton(icon: Icon(Icons.pause), onPressed: () {
          //              setState(() {});
                          
          //                  videoPlayerController2.pause();
          //              },
          //              iconSize: 16.0,
          //              ),
                        
          //   ],
          // ),
          
         Container(
           padding: EdgeInsets.only(bottom: 12),
          )
        ]));
  }
}
