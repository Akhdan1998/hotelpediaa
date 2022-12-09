import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'chekout.dart';

class room_detail extends StatefulWidget {
  const room_detail({Key? key}) : super(key: key);

  @override
  State<room_detail> createState() => _room_detailState();
}

class _room_detailState extends State<room_detail> {
  bool show = false;
  final int cuan = 237000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 133,
                      color: 'C01414'.toColor(),
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back,
                                size: 20, color: Colors.white),
                          ),
                          SizedBox(width: 11),
                          Text(
                            'Marcopolo Hotel Resort and Spa',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 265,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          left: 20, right: 20, bottom: 10, top: 170),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Deluxe Room Pool View',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: '323232'.toColor()),
                            ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Marcopolo Hotel Resort and Spa',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: '323232'.toColor()),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(width: 1),
                            ),
                            padding: EdgeInsets.only(
                                left: 19, top: 8, right: 19, bottom: 8),
                            child: Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'tiperanjang',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8,
                                                color: '626161'.toColor()),
                                      ).tr(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.king_bed_outlined,
                                            size: 9,
                                            color: '626161'.toColor(),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '1 Double Bed',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontSize: 7,
                                                    fontWeight: FontWeight.w300,
                                                    color: '626161'.toColor()),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 23),
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'ukurankamar',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8,
                                                color: '626161'.toColor()),
                                      ).tr(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons
                                                .photo_size_select_small_outlined,
                                            size: 9,
                                            color: '626161'.toColor(),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '22m',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontSize: 7,
                                                    fontWeight: FontWeight.w300,
                                                    color: '626161'.toColor()),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 22),
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'jumlahtamu',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8,
                                                color: '626161'.toColor()),
                                      ).tr(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person_outlined,
                                            size: 9,
                                            color: '626161'.toColor(),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '1 Tamu',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontSize: 7,
                                                    fontWeight: FontWeight.w300,
                                                    color: '626161'.toColor()),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  width: MediaQuery.of(context).size.width - 40,
                  height: 212,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/room_detail.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // child: Stack(
                    //   children: [
                    //     Positioned(
                    //       top: 185,
                    //       left: 270,
                    //       child: Container(
                    //         // width: 35,
                    //         // height: 17,
                    //         padding: EdgeInsets.only(
                    //             left: 9, top: 3, right: 9, bottom: 3),
                    //         decoration: BoxDecoration(
                    //           color: Colors.grey.shade400,
                    //           borderRadius: BorderRadius.circular(20),
                    //         ),
                    //         child: Text(
                    //           '1/12',
                    //           style: GoogleFonts.montserrat().copyWith(
                    //               fontSize: 10,
                    //               fontWeight: FontWeight.w300,
                    //               color: Colors.white),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                // Positioned(
                //   top: 80,
                //   left: 20,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width - 40,
                //     height: 212,
                //     child: Image.asset(
                //       'assets/room_detail.png',
                //     ),
                //   ),
                // ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 94,
              padding: EdgeInsets.only(left: 20, top: 9, bottom: 9, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 210,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'fasilitas',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '323232'.toColor()),
                                ).tr(),
                                SizedBox(width: 6),
                                Container(
                                  height: 12,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'lihatsemua',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 7,
                                        color: 'C01414'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                Icon(
                                  Icons.restaurant_outlined,
                                  size: 9,
                                  color: '626161'.toColor(),
                                ),
                                SizedBox(width: 6),
                                Container(
                                  height: 12,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'sarapan',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 8,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                Icon(
                                  Icons.wifi_outlined,
                                  size: 9,
                                  color: '626161'.toColor(),
                                ),
                                SizedBox(width: 6),
                                Container(
                                  height: 12,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Wifi',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 8,
                                        color: '626161'.toColor()),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                Icon(
                                  Icons.smoke_free_outlined,
                                  size: 9,
                                  color: '626161'.toColor(),
                                ),
                                SizedBox(width: 6),
                                Container(
                                  height: 12,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'rokok',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 8,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 80,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width - 241,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 23),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'kebijakankamar',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: '323232'.toColor()),
                                ).tr(),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 9,
                                    height: 9,
                                    child: Image.asset('assets/reschedule.png'),
                                  ),
                                  SizedBox(width: 7),
                                  Container(
                                    height: 12,
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'refund',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 8,
                                          color: '626161'.toColor()),
                                    ).tr(),
                                  ),
                                ],
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
            // SizedBox(height: 5),
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'informasi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 6),
                  (show == true)
                      ? Container(
                          // padding:
                          //     EdgeInsets.only(top: 12),
                          // height: 94,
                          // width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'isideskripsi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ],
                          ),
                        )
                      : SizedBox(),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 40,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        child: (show == true)
                            ? Text(
                                'tutupinformasi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ).tr()
                            : Text(
                                'Lihat Informasi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ).tr()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 81,
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 9,
                        height: 9,
                        child: Image.asset('assets/cuanbiru.png'),
                      ),
                      SizedBox(width: 6),
                      Container(
                        child: Text(
                          '1.174 Point',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: '8F8D8D'.toColor()),
                        ),
                      ),
                    ],
                  ),
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
                                fontSize: 12,
                                color: 'C01414'.toColor()),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          child: Text(
                            'jam',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '8F8D8D'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 34,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: 'C01414'.toColor(),
                onPressed: () {
                  Get.to(chekout());
                },
                child: Text(
                  'tombolpesankamar',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ).tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
