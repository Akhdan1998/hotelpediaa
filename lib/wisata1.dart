import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/payment_detail.dart';
import 'package:hotelpedia/payment_detail_wisata.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class wisata1 extends StatelessWidget {
  const wisata1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    final String orderid = '103714992';
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(payment_detail_kereta());
              },
              child: Ink(
                padding:
                    EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // height: 148,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 10,
                                child: Image.asset('assets/wisata1.png'),
                              ),
                              SizedBox(width: 6),
                              Container(
                                child: Text(
                                  'Wisata',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '6C6C6C'.toColor()),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'Order ID : ',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '6C6C6C'.toColor()),
                                ),
                              ),
                              Container(
                                child: Text(
                                  orderid,
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '6C6C6C'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            child: Image.asset('assets/zoo.png'),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 50 - 50,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Taman Safari Bogor',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: '323232'.toColor()),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.star_outlined,
                                              color: 'FFCE31'.toColor(),
                                              size: 9,
                                            ),
                                          ),
                                          Container(
                                            child: Icon(
                                              Icons.star_outlined,
                                              color: 'FFCE31'.toColor(),
                                              size: 9,
                                            ),
                                          ),
                                          Container(
                                            child: Icon(
                                              Icons.star_outlined,
                                              color: 'FFCE31'.toColor(),
                                              size: 9,
                                            ),
                                          ),
                                          Container(
                                            child: Icon(
                                              Icons.star_outlined,
                                              color: 'FFCE31'.toColor(),
                                              size: 9,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Container(
                                            child: Text(
                                              '4.0',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 7,
                                                      color:
                                                          'FFCE31'.toColor()),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Safari',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 8,
                                                color: '747474'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        'siang',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 8,
                                                color: '747474'.toColor()),
                                      ).tr(),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        '+',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 8,
                                                color: '747474'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        'Panda',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 8,
                                                color: '747474'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        'hari',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 8,
                                                color: '747474'.toColor()),
                                      ).tr(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.calendar_month,
                                        size: 11, color: 'BCBCBC'.toColor()),
                                  ),
                                  SizedBox(width: 6),
                                  Container(
                                    child: Text(
                                        DateFormat.yMMMEd().format(data) +
                                            ' ' +
                                            DateFormat.Hm().format(data),
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300,
                                            color: '9C9C9C'.toColor())),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: '8FFF67'.toColor(),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 3, bottom: 3),
                              // width: 50,
                              // height: 17,
                              child: Text(
                                'selesai',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                    color: '028E08'.toColor()),
                              ).tr(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            width: 11,
                            child: Icon(
                              Icons.av_timer,
                              size: 11,
                              color: 'BCBCBC'.toColor(),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            child: Text(
                              '1 Tiket',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: '9C9C9C'.toColor()),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
