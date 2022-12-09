import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'navigation.dart';

class succes extends StatefulWidget {
  const succes({Key? key}) : super(key: key);

  @override
  State<succes> createState() => _succesState();
}

class _succesState extends State<succes> {
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
                  SizedBox(height: 74),
                  Container(
                    width: 272.15,
                    height: 232.62,
                    child: Image.asset('assets/sucess.png'),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'judullottie2',
                      textAlign: TextAlign.center,
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
                      'deskripsilottie2',
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
                        Get.offAll(navigation('token'));
                        // Get.to(navigation);
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'looking',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 9,
                              color: '989797'.toColor()),
                        ).tr(),
                      ),
                      SizedBox(width: 2),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(navigation('token'));
                        // Get.to(navigation('token'));
                        },
                        child: Container(
                          // width: 165,
                          child: Text(
                            'kembalikerumah',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 9,
                                color: 'C01414'.toColor()),
                          ).tr(),
                        ),
                      ),
                    ],
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
