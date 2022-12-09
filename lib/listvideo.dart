import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/video1.dart';
import 'package:hotelpedia/video2.dart';
import 'package:supercharged/supercharged.dart';

class listvideo extends StatelessWidget {
  const listvideo({Key? key}) : super(key: key);

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
                'judulvideo',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).tr(),
            ),
          ],
        ),
      ),
      body: Container(
        // padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
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
            video1(),
            SizedBox(height: 15),
            video2(),
          ],
        ),
      ),
    );
  }
}
