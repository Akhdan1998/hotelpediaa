import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class pengaturanemailnomor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int nomerponsel = 081239849076;
    String email = 'yuvanfaridazizsu@gmail.com';
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
                'judulemailnomor',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).tr(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'nomorponsel',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).tr(),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              '+',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: '4A4A4A'.toColor()),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 49,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  ('$nomerponsel'),
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: '4A4A4A'.toColor()),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'verifed',
                                          style: GoogleFonts.montserrat().copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: '39AA3D'.toColor()),
                                        ).tr(),
                                      ),
                                      SizedBox(width: 6),
                                      Container(
                                        child: Icon(
                                          Icons.verified, color: '39AA3D'.toColor(), size: 12,),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: Text(
                          'surel',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).tr(),
                      ),
                      SizedBox(height: 7),
                      Container(
                        child: Text(email,
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: '4A4A4A'.toColor()),),
                      ),
                      SizedBox(height: 3),
                      Container(
                        child: Text('deskripsisurel',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              color: '9E9E9E'.toColor()),
                        ).tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
