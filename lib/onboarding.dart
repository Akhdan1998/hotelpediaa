import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/signin.dart';
import 'package:supercharged/supercharged.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Positioned(
            height: MediaQuery.of(context).size.height,
            // top: 0,
            child: Image(
              image: AssetImage("assets/onboarding.png"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 26, right: 26),
            child: Column(
              children: [
                SizedBox(height: 435),
                Image.asset('assets/hotelpedia.png', scale: 3),
                SizedBox(height: 12),
                Container(
                  width: 265,
                  child: Text('deskripsionboarding',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                  ).tr(),
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(42)),
                    color: 'C01414'.toColor(),
                    onPressed: () {
                      Get.off(signin());
                    },
                    child: Text('tombolonboarding',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                    ).tr(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
