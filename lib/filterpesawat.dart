import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'listgaruda.dart';
import 'listlionair.dart';

class filterpesawat extends StatelessWidget {
  const filterpesawat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    final String keberangkatan = 'Jakarta';
    final String tujuan = 'Surabaya';
    final String kota1 = 'JKT';
    final String kota2 = 'SUB';
    final String kelaspesawat = 'Ekonomi';
    final int jumlahorang = 1;
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
              child: Container(
                child: Icon(Icons.arrow_back_outlined,
                    size: 20, color: Colors.white),
              ),
            ),
            SizedBox(width: 11),
            Container(
              child: Text(
                'juduldaftarpenerbangan',
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
            // height: 92,
            color: 'C01414'.toColor(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18)),
              ),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            keberangkatan,
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                                color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 60,
                            height: 4,
                            child: Image.asset('assets/otw.png'),
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: Text(
                              tujuan,
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              color: 'C01414'.toColor(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            width: MediaQuery.of(context).size.width - 51,
                            // height: 34,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.flight_takeoff_outlined,
                                    size: 14, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  kota1,
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '|',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.flight_land,
                                    size: 14, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  kota2,
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '|',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(DateFormat.MMMd().format(data),
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                                SizedBox(width: 5),
                                Text(
                                  '|',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.people,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Container(
                                  child: Text(
                                    ('$jumlahorang'),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 9,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '|',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.flight,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  kelaspesawat,
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(bottom: 5),
                            alignment: Alignment.topRight,
                            height: 25,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.green,
                            child: Image.asset('assets/button.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 3),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.only(left: 18, top: 13, bottom: 13),
            child: Text(
              'judulmenampilkanpenerbanganterbaik',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ).tr(),
          ),
          listlionair(),
          SizedBox(height: 11),
          listgaruda(),
        ],
      ),
    );
  }
}
