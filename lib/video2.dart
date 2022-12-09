import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:video_player/video_player.dart';

import 'detailvideo.dart';

class video2 extends StatefulWidget {
  const video2({Key? key}) : super(key: key);

  @override
  State<video2> createState() => _video2State();
}

class _video2State extends State<video2> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('video/vespa.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      // height: 74,
      child: GestureDetector(
        onTap: () {
          Get.to(detailvideo());
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 132,
              // height: 74,
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 182,
                    child: Text(
                      'Cinematic Video Touring Bogor',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 9.6,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            '1jt',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                                color: '737373'.toColor()),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          child: Text(
                            'lihat',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                                color: '737373'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 3),
                        Container(
                          child: Text(
                            '|',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                                color: '737373'.toColor()),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          child: Text(
                            '29',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                                color: '737373'.toColor()),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          child: Text(
                            'day',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                                color: '737373'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width - 182,
                    child: Text(
                      'deskripsivideo', maxLines: 4,
                      style: GoogleFonts.montserrat().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 8,
                          color: '737373'.toColor()),
                    ).tr(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
