import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class ulasan1 extends StatelessWidget {
  const ulasan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String nama = 'Suyono';
    final String keperluan = 'Bisnis';
    DateTime data = DateTime.now();
    return Material(
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: 50,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: '323232'.toColor()),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    nama,
                    style: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: '323232'.toColor()),
                  ),
                ),
                // SizedBox(height: 2),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(DateFormat.MMMMd().format(data),
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '939393'.toColor())),
                            ),
                            Container(
                              child: Text(' - ',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '939393'.toColor())),
                            ),
                            Container(
                              child: Text(keperluan,
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '939393'.toColor())),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 4),
                            Container(
                              child: Text(
                                '4.0',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                    color: 'FFCE31'.toColor()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 8),
                Divider(
                  thickness: 1,
                ),
                // SizedBox(height: 8),
                Container(
                  child: Text(
                    'komenulasan',
                    style: GoogleFonts.montserrat().copyWith(
                        fontSize: 9,
                        fontWeight: FontWeight.w300,
                        color: '323232'.toColor()),
                  ).tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
