import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/payment_detail.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'detailpembayaran.dart';

class payment_method extends StatefulWidget {
  const payment_method({Key? key}) : super(key: key);

  @override
  State<payment_method> createState() => _payment_methodState();
}

class _payment_methodState extends State<payment_method> {
  final int kodetransaksi = 103714992;
  final int pembayaran = 1226300;
  final int totalpembayaran = 1176300;
  final int diskon = 50000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: 'C01414'.toColor(),
        elevation: 0,
        title: Container(
          child: Row(
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
                  'orderid',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ).tr(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 68,
              color: 'C01414'.toColor(),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            'orderid',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: '323232'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 3),
                        Text(
                          ':',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor()),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: MediaQuery.of(context).size.width - 118,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$kodetransaksi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: '323232'.toColor()),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'totalpembayaran',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: '323232'.toColor()),
                            ).tr(),
                          ),
                          Text(
                            NumberFormat.currency(
                                    locale: 'id', decimalDigits: 0)
                                .format(pembayaran),
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: 'C01414'.toColor()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              // height: 165,
              padding:
                  EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 12),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 11, top: 13, right: 11, bottom: 13),
                    width: MediaQuery.of(context).size.width,
                    // height: 39,
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.confirmation_number,
                          size: 15,
                          color: 'C01414'.toColor(),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 92,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'kodepromo',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: '323232'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Text(
                                  'gunakan',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
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
                    padding: EdgeInsets.only(
                        left: 14, top: 12, right: 14, bottom: 12),
                    width: MediaQuery.of(context).size.width,
                    // height: 90,
                    decoration: BoxDecoration(
                      color: 'F5F5F5'.toColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'harga2',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '323232'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Text(
                                  NumberFormat.currency(
                                          locale: 'id', decimalDigits: 0)
                                      .format(pembayaran),
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '3C3D3F'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'diskon',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '323232'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Text(
                                  NumberFormat.currency(
                                          locale: 'id', decimalDigits: 0)
                                      .format(diskon),
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: 'C01414'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'totalpembayaran',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '323232'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Text(
                                  NumberFormat.currency(
                                          locale: 'id', decimalDigits: 0)
                                      .format(totalpembayaran),
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: '3C3D3F'.toColor()),
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
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 202,
              color: Colors.white,
              padding:
                  EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'tranfer',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    // height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: 'F5F5F5'.toColor(),
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'BCA Virtual Account',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/bca.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'BNI Virtual Account',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/bni.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'BRI Virtual Account',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/bri.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Mandiri Virtual Account',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/mandiri.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 165,
              // color: Colors.green,
              padding:
              EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'pembayaranmudah',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    // height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: 'F5F5F5'.toColor(),
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'OVO Payment',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/ovo.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'GOPAY Payment',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/gopay.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(detailpembayaran());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'DANA Payment',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300, fontSize: 10,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  width: 41,
                                  height: 19,
                                  child: Image.asset('assets/dana.png'),
                                ),
                              ],
                            ),
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
    );
  }
}
