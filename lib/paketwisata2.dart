import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'chekoutwisata.dart';

class paket2 extends StatelessWidget {
  const paket2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int pembayaran = 155000;
    return Material(
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 20, top: 14, bottom: 12, right: 20),
          color: Colors.white,
          child: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Safari',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          'siang',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ).tr(),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          '+',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          'Panda',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          'hari',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ).tr(),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 6),
                Container(
                  width: MediaQuery.of(context).size.width - 130,
                  child: Text(
                    'deskripsipaket',
                    maxLines: 2,
                    style: GoogleFonts.montserrat().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: '323232'.toColor()),
                  ).tr(),
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                NumberFormat.currency(
                                    locale: 'id', decimalDigits: 0)
                                    .format(pembayaran),
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: 'C01414'.toColor()),
                              ),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Text(
                                '1',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 8,
                                    color: '8F8D8D'.toColor()),
                              ).tr(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // width: 137,
                        // height: 30,
                        // padding: EdgeInsets.only(
                        //     left: 40, top: 9, right: 39, bottom: 8),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: 'C01414'.toColor(),
                          onPressed: () {
                            Get.to(chekoutwisata());
                          },
                          child: Text(
                            'tombolpaket',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
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
          ),
        ),
      ),
    );
  }
}
