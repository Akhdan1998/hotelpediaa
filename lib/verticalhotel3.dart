import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'hoteldetail.dart';

class verticalhotel3 extends StatelessWidget {
  const verticalhotel3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cuan = 237000;
    return Material(
      child: GestureDetector(
        onTap: () {
          Get.to(hoteldetail());
        },
        child: Container(
          color: Colors.white,
          width: 98,
          // height: 134,
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/verticalhotel3.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
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
                EdgeInsets.only(left: 5, top: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Sujayana Resort',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            color: '323232'.toColor()),
                      ),
                    ),
                    SizedBox(height: 3),
                    Container(
                      child: Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 6,
                            color: '848484'.toColor()),
                      ),
                    ),
                    SizedBox(height: 3),
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
                    SizedBox(height: 4),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              NumberFormat.currency(
                                  locale: 'id', decimalDigits: 0)
                                  .format(cuan),
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 8,
                                  color: 'C01414'.toColor()),
                            ),
                          ),
                          Container(
                            child: Text(
                              '/Night',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 5,
                                  fontWeight: FontWeight.w300,
                                  color: '757575'.toColor()),
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
