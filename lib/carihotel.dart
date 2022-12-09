import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/verticalhotel1.dart';
import 'package:hotelpedia/verticalhotel2.dart';
import 'package:hotelpedia/verticalhotel3.dart';
import 'package:supercharged/supercharged.dart';

import 'daftarhotel.dart';

class carihotel extends StatefulWidget {
  const carihotel({Key? key}) : super(key: key);

  @override
  State<carihotel> createState() => _carihotelState();
}

class _carihotelState extends State<carihotel> {
  final carihotellokasiEditingController = TextEditingController();
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 11, 5),
    end: DateTime(2022, 12, 24),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          // color: Colors.blue,
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/background.png'),
                  Positioned(
                    top: 42,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_back,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Container(
                      child: Text(
                        'carihotel2',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ).tr(),
                    ),
                  ),
                  Positioned(
                    top: 139,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(1, 1),
                            color: Colors.black26,
                          ),
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(-1, 1),
                            color: Colors.black26,
                          ),
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(1, -1),
                            color: Colors.black26,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            topLeft: Radius.circular(18)),
                      ),
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Column(
                        children: [
                          Container(
                            // padding: EdgeInsets.only(
                            //     left: 20, top: 20, right: 20, bottom: 15),
                            height: 35,
                            child: TextFormField(
                              controller: carihotellokasiEditingController,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 18),
                                hintText: 'Cari Hotel berdasarkan lokasi',
                                hintStyle: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: 'C4C4C4'.toColor()),
                                fillColor: 'F5F5F5'.toColor(),
                                filled: true,
                                prefixIcon: Icon(Icons.search_outlined,
                                    color: 'C4C4C4'.toColor(), size: 17),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                              color: 'F5F5F5'.toColor(),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.only(
                                left: 16, top: 9, right: 16, bottom: 9),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.calendar_month,
                                          size: 12,
                                          color: 'C4C4C4'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: pickDateRange,
                                        child: Text(
                                          '${start.day} ${start.month}',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: 'C4C4C4'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        '-',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11,
                                                color: 'C4C4C4'.toColor()),
                                      ),
                                      SizedBox(width: 3),
                                      GestureDetector(
                                        onTap: pickDateRange,
                                        child: Text(
                                          '${end.day} ${end.month} ${end.year}',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: 'C4C4C4'.toColor()),
                                        ),
                                      ),
                                      // SizedBox(width: 29),
                                    ],
                                  ),
                                ),
                                Text(
                                  '|',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: 'C4C4C4'.toColor()),
                                ),
                                // SizedBox(width: 22),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.people,
                                            size: 12,
                                            color: 'C4C4C4'.toColor(),
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          '1 Kamar, 1 Tamu',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: 'C4C4C4'.toColor()),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 15),
                          // Container(
                          //   padding: EdgeInsets.only(left: 15, right: 15),
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 34,
                          //   child: FlatButton(
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(10)),
                          //     color: 'C01414'.toColor(),
                          //     onPressed: () {
                          //       Get.to(daftarhotel());
                          //     },
                          //     child: Text('ayocari',
                          //       style: GoogleFonts.poppins().copyWith(
                          //           fontSize: 12,
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.white),
                          //     ).tr(),
                          //   ),
                          // ),
                          // Container(
                          //   padding: EdgeInsets.only(top: 12, bottom: 18),
                          //   width: MediaQuery.of(context).size.width,
                          //   // height: 108,
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Container(
                          //         padding: EdgeInsets.only(left: 15),
                          //         child: Text(
                          //           'judulpencarianterakhir',
                          //           style: GoogleFonts.montserrat().copyWith(
                          //               fontWeight: FontWeight.bold,
                          //               fontSize: 11,
                          //               color: Colors.black),
                          //         ).tr(),
                          //       ),
                          //       SizedBox(height: 10),
                          //       Container(
                          //         child: SingleChildScrollView(
                          //           clipBehavior: Clip.hardEdge,
                          //           physics: BouncingScrollPhysics(),
                          //           scrollDirection: Axis.horizontal,
                          //           child: Row(
                          //             children: [
                          //               SizedBox(width: 15),
                          //               Container(
                          //                 padding: EdgeInsets.only(
                          //                     left: 10, top: 5, right: 5, bottom: 11),
                          //                 width: 240,
                          //                 // height: 55,
                          //                 decoration: BoxDecoration(
                          //                   border:
                          //                   Border.all(width: 1, color: Colors.grey),
                          //                   borderRadius: BorderRadius.circular(5),
                          //                 ),
                          //                 child: Column(
                          //                   children: [
                          //                     GestureDetector(
                          //                       onTap: () {},
                          //                       child: Container(
                          //                         alignment: Alignment.centerRight,
                          //                         child: Container(
                          //                           width: 10,
                          //                           height: 10,
                          //                           decoration: BoxDecoration(
                          //                             color: Colors.black,
                          //                             borderRadius:
                          //                             BorderRadius.circular(50),
                          //                           ),
                          //                           child: Icon(Icons.close_outlined,
                          //                               color: Colors.white, size: 7),
                          //                         ),
                          //                       ),
                          //                     ),
                          //                     Container(
                          //                       alignment: Alignment.centerLeft,
                          //                       child: Text(
                          //                         'Marcopolo Hotel Resort and Spa',
                          //                         style: GoogleFonts.montserrat().copyWith(
                          //                             fontSize: 10,
                          //                             fontWeight: FontWeight.bold,
                          //                             color: Colors.black),
                          //                       ),
                          //                     ),
                          //                     SizedBox(height: 4),
                          //                     Container(
                          //                       alignment: Alignment.centerLeft,
                          //                       child: Text(
                          //                         '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                          //                         style: GoogleFonts.montserrat().copyWith(
                          //                             fontSize: 9,
                          //                             fontWeight: FontWeight.w300,
                          //                             color: '7C7C7C'.toColor()),
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               SizedBox(width: 10),
                          //               Container(
                          //                 padding: EdgeInsets.only(
                          //                     left: 10, top: 5, right: 5, bottom: 11),
                          //                 width: 240,
                          //                 // height: 55,
                          //                 decoration: BoxDecoration(
                          //                   border:
                          //                   Border.all(width: 1, color: Colors.grey),
                          //                   borderRadius: BorderRadius.circular(5),
                          //                 ),
                          //                 child: Column(
                          //                   children: [
                          //                     GestureDetector(
                          //                       onTap: () {},
                          //                       child: Container(
                          //                         alignment: Alignment.centerRight,
                          //                         child: Container(
                          //                           width: 10,
                          //                           height: 10,
                          //                           decoration: BoxDecoration(
                          //                             color: Colors.black,
                          //                             borderRadius:
                          //                             BorderRadius.circular(50),
                          //                           ),
                          //                           child: Icon(Icons.close_outlined,
                          //                               color: Colors.white, size: 7),
                          //                         ),
                          //                       ),
                          //                     ),
                          //                     Container(
                          //                       alignment: Alignment.centerLeft,
                          //                       child: Text(
                          //                         'Marcopolo Hotel Resort and Spa',
                          //                         style: GoogleFonts.montserrat().copyWith(
                          //                             fontSize: 10,
                          //                             fontWeight: FontWeight.bold,
                          //                             color: Colors.black),
                          //                       ),
                          //                     ),
                          //                     SizedBox(height: 4),
                          //                     Container(
                          //                       alignment: Alignment.centerLeft,
                          //                       child: Text(
                          //                         '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                          //                         style: GoogleFonts.montserrat().copyWith(
                          //                             fontSize: 9,
                          //                             fontWeight: FontWeight.w300,
                          //                             color: '7C7C7C'.toColor()),
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //               SizedBox(width: 15),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // // SizedBox(height: 13),
                          // Container(
                          //   padding: EdgeInsets.only(left: 17),
                          //   alignment: Alignment.centerLeft,
                          //   child: Text(
                          //     'rekomendasi',
                          //     style: GoogleFonts.montserrat().copyWith(
                          //         fontWeight: FontWeight.bold,
                          //         fontSize: 12,
                          //         color: Colors.black),
                          //   ).tr(),
                          // ),
                          // SizedBox(height: 3),
                          // Container(
                          //   padding: EdgeInsets.only(left: 17),
                          //   alignment: Alignment.centerLeft,
                          //   child: Text(
                          //     'deskripsirekomendasi',
                          //     style: GoogleFonts.montserrat().copyWith(
                          //         fontWeight: FontWeight.w300,
                          //         fontSize: 10,
                          //         color: '747474'.toColor()),
                          //   ).tr(),
                          // ),
                          // SizedBox(height: 13),
                          // SingleChildScrollView(
                          //   clipBehavior: Clip.hardEdge,
                          //   physics: BouncingScrollPhysics(),
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: [
                          //       SizedBox(width: 15),
                          //       GestureDetector(
                          //         onTap: () {},
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: 'FFDDDD'.toColor(),
                          //             border: Border.all(
                          //                 width: 1, color: 'C01414'.toColor()),
                          //             borderRadius: BorderRadius.circular(20),
                          //           ),
                          //           padding: EdgeInsets.only(
                          //               left: 13, right: 13, top: 7, bottom: 7),
                          //           child: Text(
                          //             'Jakarta',
                          //             style: GoogleFonts.montserrat().copyWith(
                          //                 fontSize: 10,
                          //                 fontWeight: FontWeight.w300,
                          //                 color: 'D04646'.toColor()),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(width: 8),
                          //       GestureDetector(
                          //         onTap: () {},
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: 'FFDDDD'.toColor(),
                          //             border: Border.all(
                          //                 width: 1, color: 'C01414'.toColor()),
                          //             borderRadius: BorderRadius.circular(20),
                          //           ),
                          //           padding: EdgeInsets.only(
                          //               left: 13, right: 13, top: 7, bottom: 7),
                          //           child: Text(
                          //             'Bogor',
                          //             style: GoogleFonts.montserrat().copyWith(
                          //                 fontSize: 10,
                          //                 fontWeight: FontWeight.w300,
                          //                 color: 'D04646'.toColor()),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(width: 8),
                          //       GestureDetector(
                          //         onTap: () {},
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: 'FFDDDD'.toColor(),
                          //             border: Border.all(
                          //                 width: 1, color: 'C01414'.toColor()),
                          //             borderRadius: BorderRadius.circular(20),
                          //           ),
                          //           padding: EdgeInsets.only(
                          //               left: 13, right: 13, top: 7, bottom: 7),
                          //           child: Text(
                          //             'Bandung',
                          //             style: GoogleFonts.montserrat().copyWith(
                          //                 fontSize: 10,
                          //                 fontWeight: FontWeight.w300,
                          //                 color: 'D04646'.toColor()),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(width: 8),
                          //       GestureDetector(
                          //         onTap: () {},
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: 'FFDDDD'.toColor(),
                          //             border: Border.all(
                          //                 width: 1, color: 'C01414'.toColor()),
                          //             borderRadius: BorderRadius.circular(20),
                          //           ),
                          //           padding: EdgeInsets.only(
                          //               left: 13, right: 13, top: 7, bottom: 7),
                          //           child: Text(
                          //             'Solo',
                          //             style: GoogleFonts.montserrat().copyWith(
                          //                 fontSize: 10,
                          //                 fontWeight: FontWeight.w300,
                          //                 color: 'D04646'.toColor()),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(width: 8),
                          //       GestureDetector(
                          //         onTap: () {},
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //             color: 'FFDDDD'.toColor(),
                          //             border: Border.all(
                          //                 width: 1, color: 'C01414'.toColor()),
                          //             borderRadius: BorderRadius.circular(20),
                          //           ),
                          //           padding: EdgeInsets.only(
                          //               left: 13, right: 13, top: 7, bottom: 7),
                          //           child: Text(
                          //             'Yogyakarta',
                          //             style: GoogleFonts.montserrat().copyWith(
                          //                 fontSize: 10,
                          //                 fontWeight: FontWeight.w300,
                          //                 color: 'D04646'.toColor()),
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(width: 15),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(height: 19),
                          // SingleChildScrollView(
                          //   clipBehavior: Clip.hardEdge,
                          //   physics: BouncingScrollPhysics(),
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: [
                          //       SizedBox(width: 17),
                          //       verticalhotel1(),
                          //       SizedBox(width: 15),
                          //       verticalhotel2(),
                          //       SizedBox(width: 15),
                          //       verticalhotel3(),
                          //       SizedBox(width: 15),
                          //       verticalhotel1(),
                          //       SizedBox(width: 17),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                height: 34,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: 'C01414'.toColor(),
                  onPressed: () {
                    Get.to(daftarhotel());
                  },
                  child: Text('ayocari',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                  ).tr(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12, bottom: 18),
                width: MediaQuery.of(context).size.width,
                // height: 108,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'judulpencarianterakhir',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black),
                      ).tr(),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: SingleChildScrollView(
                        clipBehavior: Clip.hardEdge,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 5, right: 5, bottom: 11),
                              width: 240,
                              // height: 55,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Icon(Icons.close_outlined,
                                            color: Colors.white, size: 7),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Marcopolo Hotel Resort and Spa',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                          color: '7C7C7C'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10, top: 5, right: 5, bottom: 11),
                              width: 240,
                              // height: 55,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Icon(Icons.close_outlined,
                                            color: Colors.white, size: 7),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Marcopolo Hotel Resort and Spa',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '12 Sep - 13 Sep 22 | 1 Kamar | 1 Tamu',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                          color: '7C7C7C'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 13),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                child: Text(
                  'rekomendasi',
                  style: GoogleFonts.montserrat().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ).tr(),
              ),
              SizedBox(height: 3),
              Container(
                padding: EdgeInsets.only(left: 17),
                alignment: Alignment.centerLeft,
                child: Text(
                  'deskripsirekomendasi',
                  style: GoogleFonts.montserrat().copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: '747474'.toColor()),
                ).tr(),
              ),
              SizedBox(height: 13),
              SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: 'FFDDDD'.toColor(),
                          border: Border.all(
                              width: 1, color: 'C01414'.toColor()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Jakarta',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: 'D04646'.toColor()),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: 'FFDDDD'.toColor(),
                          border: Border.all(
                              width: 1, color: 'C01414'.toColor()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Bogor',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: 'D04646'.toColor()),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: 'FFDDDD'.toColor(),
                          border: Border.all(
                              width: 1, color: 'C01414'.toColor()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Bandung',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: 'D04646'.toColor()),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: 'FFDDDD'.toColor(),
                          border: Border.all(
                              width: 1, color: 'C01414'.toColor()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Solo',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: 'D04646'.toColor()),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: 'FFDDDD'.toColor(),
                          border: Border.all(
                              width: 1, color: 'C01414'.toColor()),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.only(
                            left: 13, right: 13, top: 7, bottom: 7),
                        child: Text(
                          'Yogyakarta',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: 'D04646'.toColor()),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 19),
              SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 17),
                    verticalhotel1(),
                    SizedBox(width: 15),
                    verticalhotel2(),
                    SizedBox(width: 15),
                    verticalhotel3(),
                    SizedBox(width: 15),
                    verticalhotel1(),
                    SizedBox(width: 17),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
