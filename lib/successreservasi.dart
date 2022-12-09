import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'navigation.dart';

class succesreservasi extends StatefulWidget {

  @override
  State<succesreservasi> createState() => _succesreservasiState();
}

class _succesreservasiState extends State<succesreservasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20, bottom: 98),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 137),
                  Container(
                    width: 138.32,
                    height: 144,
                    child: Image.asset('assets/successreservasi.png'),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'judullottie1', textAlign: TextAlign.center,
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ).tr(),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'deskripsilottie1',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: '989797'.toColor()),
                    ).tr(),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 13, right: 13),
                    width: MediaQuery.of(context).size.width,
                    height: 36,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: 'C01414'.toColor(),
                      onPressed: () {
                        // Get.to(navigation('token'));
                        Get.offAll(navigation('token'));
                      },
                      child: Text('tombolreservasi',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                      ).tr(),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    // color: Colors.grey,
                    // width: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'tanya3',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 9,
                                color: '989797'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Get.offAll(navigation('token'));
                              // Get.to(navigation);
                            },
                            child: Container(
                              // width: 165,
                              child: Text(
                                'kembalikerumah',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9,
                                    color: 'C01414'.toColor()),
                              ).tr(),
                            ),
                          ),
                        ),
                      ],
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
