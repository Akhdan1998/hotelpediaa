import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:video_player/video_player.dart';

class detailvideo extends StatefulWidget {
  const detailvideo({Key? key}) : super(key: key);

  @override
  State<detailvideo> createState() => _detailvideoState();
}

class _detailvideoState extends State<detailvideo> {
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: 'C01414'.toColor(),
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back_outlined,
                  size: 20, color: Colors.white),
            ),
            SizedBox(width: 11),
            Container(
              child: Text(
                'juduldetailvideo',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).tr(),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            color: 'C01414'.toColor(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
              ),
            ),
          ),
          Container(
            // padding: EdgeInsets.only(right: 20, left: 20),
            width: MediaQuery.of(context).size.width,
            height: 189,
            child: Stack(
              children: [
                Center(
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState ==
                          ConnectionState.done) {
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
                Center(
                  child: Container(
                    width: 30,
                    height: 30,
                    child: RaisedButton(
                      padding: EdgeInsets.only(right: 0.5, top: 2),
                      textColor: Colors.white,
                      color: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        });
                      },
                      child: Icon(_controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 14),
                Container(
                  child: Text(
                    'Cinematic Video Touring Bogor',
                    style: GoogleFonts.montserrat().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 7),
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
                SizedBox(height: 7),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'deskripsivideo',
                    style: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                        color: '737373'.toColor()),
                  ).tr(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
