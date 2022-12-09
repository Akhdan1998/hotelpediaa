import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/ticket_detail_plane_departure.dart';
import 'package:hotelpedia/ticket_detail_train_departure.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class bengawan extends StatefulWidget {
  const bengawan({Key? key}) : super(key: key);

  @override
  State<bengawan> createState() => _bengawanState();
}

class _bengawanState extends State<bengawan> {
  int harga = 74000;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () {
          Get.to(ticket_detail_train_departure());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: 121,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 29,
                height: 17,
                child: Image.asset('assets/kai.png'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width- 85,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bengawan 305',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 11,
                              color: '6C6C6C'.toColor()),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 9, top: 4, right: 9, bottom: 4),
                          decoration: BoxDecoration(
                            color: 'FCDDDD'.toColor(),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'ekonomi',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: '626161'.toColor()),
                              ).tr(),
                              Text(
                                '(SubClass C)',
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 5,
                                    color: '626161'.toColor()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // alignment: Alignment.bottomCenter,
                            // width: 26.5,
                            // height: 25.35,
                            child: Text(
                              '18:40',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 9,
                                  color: '6C6C6C'.toColor()),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            width: 50,
                            height: 5,
                            child: Image.asset('assets/otw.png'),
                          ),
                          Container(
                            // alignment: Alignment.bottomCenter,
                            // width: 26.5,
                            // height: 25.35,
                            child: Text(
                              '21:40',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 9,
                                  color: '6C6C6C'.toColor()),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            // width: 26.5,
                            // height: 25.35,
                            child: Text(
                              'JKT',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 9,
                                  color: '6C6C6C'.toColor()),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            alignment: Alignment.topCenter,
                            // width: 50,
                            child: Text(
                              '2 Jam Langsung',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 5,
                                  color: 'B5B4B4'.toColor()),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            alignment: Alignment.topCenter,
                            // width: 26.5,
                            // height: 25.35,
                            child: Text(
                              'SUB',
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
                  // SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          NumberFormat.currency(
                              locale: 'id ',
                              symbol: 'Rp ',
                              decimalDigits: 0)
                              .format(harga),
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: 'C01414'.toColor()),
                        ),
                        Text(
                          '/pax',
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 8,
                              color: 'C4C4C4'.toColor()),
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
