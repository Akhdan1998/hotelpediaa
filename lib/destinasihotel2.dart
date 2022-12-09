import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'hoteldetail.dart';

class destinasihotel2 extends StatelessWidget {
  const destinasihotel2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          Get.to(hoteldetail());
        },
        child: Container(
          width: 270,
          // height: 122,
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/background2.png'),
              ),
              // SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(1, 1),
                      color: Colors.grey.shade300,
                    ),
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(-1, 1),
                      color: Colors.grey.shade300,
                    ),
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(1, 0),
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                padding:
                EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Rost Venue Hotel',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '323232'.toColor()),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 3),
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
                    SizedBox(height: 6),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 9,
                                  height: 10,
                                  child: Image.asset('assets/reschedule.png'),
                                ),
                                SizedBox(width: 3),
                                Container(
                                  child: Text(
                                    'schedule',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.free_breakfast_outlined, size: 13, color: '626161'.toColor(),
                                  ),
                                ),
                                SizedBox(width: 3),
                                Container(
                                  child: Text(
                                    'makan',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.wifi_outlined, size: 13, color: '626161'.toColor(),
                                  ),
                                ),
                                SizedBox(width: 3),
                                Container(
                                  child: Text(
                                    'wifi',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 7,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
