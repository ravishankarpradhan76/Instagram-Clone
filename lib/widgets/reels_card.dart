import 'package:flutter/material.dart';
import 'package:instragram_clone/domain/utills.dart';
import 'package:video_player/video_player.dart';

class ReelsCard extends StatefulWidget {
  const ReelsCard({super.key});

  @override
  State<ReelsCard> createState() => _ReelsCardState();
}

class _ReelsCardState extends State<ReelsCard> {
  VideoPlayerController? videoPlayerController;
  int currentvideo = 0;

  List<String> shortsVideo = [
    'assets/videos/215474_small.mp4',
    'assets/videos/aaa.mp4',
    'assets/videos/asdf.mp4',
    'assets/videos/dddd.mp4',
    'assets/videos/ggg.mp4',
    'assets/videos/qqqq.mp4',
  ];

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() {
    videoPlayerController =
        VideoPlayerController.asset(shortsVideo[currentvideo])
          ..initialize().then((_) {
            setState(() {
              videoPlayerController!.play();
            });
          });
  }

  void changeShort(bool isNext) {
    if (isNext) {
      currentvideo = (currentvideo + 1) % shortsVideo.length;
    } else {
      currentvideo =
          (currentvideo - 1 + shortsVideo.length) % shortsVideo.length;
    }
    initialize();
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Reels',
              style: myTextStyle25(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.camera_alt_outlined, size: 35),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (videoPlayerController != null &&
                videoPlayerController!.value.isInitialized)
              Center(
                child: GestureDetector(
                  onVerticalDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dy > 0) {
                      changeShort(false);
                    } else if (drag.velocity.pixelsPerSecond.dy < 0) {
                      changeShort(true);
                    }
                  },
                  onTap: () {
                    if (videoPlayerController!.value.isPlaying) {
                      videoPlayerController!.pause();
                    } else {
                      videoPlayerController!.play();
                    }
                  },
                  child: AspectRatio(
                    aspectRatio: videoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(videoPlayerController!),
                  ),
                ),
              )
            else
              CircularProgressIndicator(color: Colors.black),
            Positioned(
                bottom: 10,
                left: 12,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 3,color: Colors.red),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/ch.png'),
                                  fit: BoxFit.cover),
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ravi_pradhan_4056',
                                style: myTextStyle15(
                                    fontColor: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'agr tum mill jao',
                              style: myTextStyle15(fontColor: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(width: 12,),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text(
                            'Follow',
                            style: myTextStyle15(
                                fontColor: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Positioned(
                top: 340,
                right: 5,
                child: Column(children: [
                  Column(
                    children: [
                      Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      Text(
                        '14k',
                        style: myTextStyle18(
                            fontColor: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Column(
                    children: [
                      Image.asset('assets/icons/chat.png',height: 30,width: 30,color: Colors.white,),
                      Text(
                        '14k',
                        style: myTextStyle18(
                            fontColor: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Column(
                    children: [
                      Image.asset('assets/icons/send.png',height: 30,width: 30,color: Colors.white,),
                      Text(
                        '14k',
                        style: myTextStyle18(
                            fontColor: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 3,color: Colors.white),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ch.png'),
                            fit: BoxFit.cover),
                      )),
                ]))
          ],
        ),
      ),
    );
  }
}
