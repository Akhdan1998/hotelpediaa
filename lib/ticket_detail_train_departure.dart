import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/ticket_checkout_plane.dart';
import 'package:hotelpedia/ticket_chekout_train.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class ticket_detail_train_departure extends StatefulWidget {
  const ticket_detail_train_departure({Key? key}) : super(key: key);

  @override
  State<ticket_detail_train_departure> createState() =>
      _ticket_detail_train_departureState();
}

class _ticket_detail_train_departureState
    extends State<ticket_detail_train_departure> {
  DateTime data = DateTime.now();
  String keberangkatan = 'JKT';
  String tujuan = 'SUB';
  String stasiun1 = 'Univers Indonesia';
  String stasiun2 = 'Univers Pancasila';
  String terminal1 = 'Terminal 1 Domestik';
  String terminal2 = 'Terminal 2 Domestik';
  int total = 74000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            SizedBox(width: 11),
            Container(
              child: Text(
                'juduldaftarkeretaapi',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ).tr(),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'detail',
                  style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: 'C01414'.toColor()),
                ).tr(),
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text(
                    keberangkatan,
                    style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: '585858'.toColor()),
                  ),
                  SizedBox(width: 9),
                  Container(
                    width: 11,
                    height: 9,
                    child: Image.asset('assets/solidplane.png'),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: MediaQuery.of(context).size.width - 93,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tujuan,
                          style: GoogleFonts.poppins().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: '585858'.toColor()),
                        ),
                        Row(
                          children: [
                            Icon(Icons.av_timer_outlined,
                                size: 12, color: Colors.black),
                            SizedBox(width: 4),
                            Text(
                              '1j 55m',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: '585858'.toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(DateFormat.Hm().format(data),
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '525252'.toColor())),
                        SizedBox(height: 2),
                        Text(DateFormat.MMMd().format(data),
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '999999'.toColor())),
                      ],
                    ),
                    // SizedBox(width: 15),
                    Container(
                      width: MediaQuery.of(context).size.width - 116,
                      // height: 49,
                      child: Column(
                        children: [
                          Container(
                            height: 18,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/jalur.png'),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                stasiun1,
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9,
                                    color: '525252'.toColor()),
                              ),
                              Text(
                                stasiun2,
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9,
                                    color: '525252'.toColor()),
                              ),
                            ],
                          ),
                          // SizedBox(height: 3),
                          // Container(
                          //   child: Row(
                          //     mainAxisAlignment:
                          //     MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Container(
                          //         child: Text(
                          //           terminal2,
                          //           style: GoogleFonts.montserrat()
                          //               .copyWith(
                          //               fontWeight: FontWeight.w300,
                          //               fontSize: 8,
                          //               color: '999999'.toColor()),
                          //         ),
                          //       ),
                          //       Container(
                          //         child: Text(
                          //           terminal1,
                          //           style: GoogleFonts.montserrat()
                          //               .copyWith(
                          //               fontWeight: FontWeight.w300,
                          //               fontSize: 8,
                          //               color: '999999'.toColor()),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // SizedBox(width: 15),
                    Column(
                      children: [
                        Text(DateFormat.Hm().format(data),
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: '525252'.toColor())),
                        SizedBox(height: 2),
                        Text(DateFormat.MMMd().format(data),
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '999999'.toColor())),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 23.4,
                    height: 12.6,
                    child: Image.asset('assets/kai.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 121,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bengawan 305',
                              style: GoogleFonts.montserrat()
                                  .copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: '6C6C6C'.toColor()),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 265,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      'ekonomi',
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                          fontWeight:
                                          FontWeight.w300,
                                          fontSize: 7.15,
                                          color:
                                          '575757'.toColor()),
                                    ).tr(),
                                  ),
                                  Text(
                                    ' | ',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontWeight:
                                        FontWeight.w300,
                                        fontSize: 7.15,
                                        color:
                                        '575757'.toColor()),
                                  ),
                                  Text(
                                    'QG686',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontWeight:
                                        FontWeight.w300,
                                        fontSize: 7.15,
                                        color:
                                        '575757'.toColor()),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'harga2',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: 'C01414'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 8),
                  Container(
                    child: Text(
                      'tarif',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '626161'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Image.asset('assets/titik.png'),
                      SizedBox(width: 5),
                      Container(
                        child: Text(
                          'usia',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: '8F8D8D'.toColor()),
                        ).tr(),
                      ),
                      SizedBox(width: 2),
                      Container(
                        width: MediaQuery.of(context).size.width - 104,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                '(x1)',
                                style: GoogleFonts.montserrat()
                                    .copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: '8F8D8D'.toColor()),
                              ),
                            ),
                            Container(
                              child: Text(
                                NumberFormat.currency(
                                    locale: 'id ', decimalDigits: 0)
                                    .format(total),
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Container(
                      child: Text(
                        'pb',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '626161'.toColor()),
                      ).tr(),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('assets/titik.png'),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'pajak',
                                  style: GoogleFonts.montserrat()
                                      .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: '8F8D8D'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Text(
                                  'termasuk',
                                  style: GoogleFonts.montserrat()
                                      .copyWith(
                                      fontSize: 10,
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
                  SizedBox(height: 15),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'total',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                locale: 'id ', decimalDigits: 0)
                                .format(total),
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: 'C01414'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'kebijakan',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: 'C01414'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 11,
                            child: Image.asset('assets/refund.png'),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: MediaQuery.of(context).size.width - 60,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'reschedule',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'detail',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: 'C01414'.toColor()),
                                  ).tr(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 11,
                            child: Image.asset('assets/reschedule.png'),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: MediaQuery.of(context).size.width - 60,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'reschedule',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'detail',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: 'C01414'.toColor()),
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
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 77,
        padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 9,
                          height: 9,
                          child: Image.asset('assets/cuan.png'),
                        ),
                        SizedBox(width: 6),
                        Container(
                          child: Text(
                            '5000 Point',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '8F8D8D'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        NumberFormat.currency(
                            locale: 'id',
                            decimalDigits: 0)
                            .format(total),
                        style: GoogleFonts.poppins()
                            .copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: 'C01414'.toColor()),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          '/Pax',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: '8F8D8D'.toColor()),
                        ).tr(),
                      ),
                    ],
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
                  Get.to(ticket_checkout_kereta());
                },
                child: Text('tombolpilihlayanantiketkereta',
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
