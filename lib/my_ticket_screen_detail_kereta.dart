import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:supercharged/supercharged.dart';

class my_ticket_screen_detail_kereta extends StatefulWidget {
  const my_ticket_screen_detail_kereta({Key? key}) : super(key: key);

  @override
  State<my_ticket_screen_detail_kereta> createState() =>
      _my_ticket_screen_detail_keretaState();
}

class _my_ticket_screen_detail_keretaState
    extends State<my_ticket_screen_detail_kereta> {
  DateTime data = DateTime.now();
  final String keberangkatan = 'Jakarta';
  final String tujuan = 'Surabaya';
  final String nama = 'Yuvan Farid Aziz';
  final String ktp = '31741904980004';
  final String kodeboking = 'A1123JKD6281';
  final String kodetransaksi = '103714992';
  final String qrData = 'www.linkedin.com/in/akhdan-habibie-401590179';
  final String kota1 = 'JKT';
  final String kota2 = 'SUB';
  final String stasiun1 = 'Univers Indonesia';
  final String stasiun2 = 'Univers Pancasila';
  final String terminal1 = 'Stasiun';
  final String terminal2 = 'Stasiun';
  final String typepesawat = 'Ekonomi 9';
  final String kursi = '4A';
  final String umur = 'Dewasa';
  final String telfon = '0321-882-2991';
  final int cuan = 57000;

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
                  'judultiket',
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                color: 'C01414'.toColor(),
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                  ),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              keberangkatan,
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: '323232'.toColor()),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            child: Text(
                              '-',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: '323232'.toColor()),
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            width: MediaQuery.of(context).size.width - 118,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    tujuan,
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Order ID : ',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 9,
                                                  color: '6C6C6C'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        child: Text(
                                          kodetransaksi,
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 9,
                                                  color: '6C6C6C'.toColor()),
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
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        padding: EdgeInsets.only(
                            left: 11, top: 10, bottom: 10, right: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'totalpembayaran',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      NumberFormat.currency(
                                              locale: 'id', decimalDigits: 0)
                                          .format(cuan),
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                          color: 'C01414'.toColor()),
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      child: Icon(Icons.expand_more_outlined,
                                          color: 'C01414'.toColor(), size: 20),
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
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 13, bottom: 13),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 16,
                          height: 11.89,
                          child: Image.asset('assets/train.png'),
                        ),
                        SizedBox(width: 9),
                        Container(
                          child: Text(
                            'detailkereta',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: '373737'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 17, right: 17, bottom: 12),
                      decoration: BoxDecoration(
                        color: 'F5F5F5'.toColor(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: MediaQuery.of(context).size.width,
                      // height: 144.5,
                      child: Column(
                        children: [
                          Container(
                            child: QrImage(
                              version: 6,
                              errorCorrectionLevel: QrErrorCorrectLevel.M,
                              data: qrData,
                              size: 100,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'kodebooking',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w300,
                                                  color: '323232'.toColor()),
                                        ).tr(),
                                      ),
                                      Container(
                                        // width: 53,
                                        // height: 14.49,
                                        padding: EdgeInsets.only(
                                            left: 7,
                                            right: 7,
                                            top: 3,
                                            bottom: 3),
                                        decoration: BoxDecoration(
                                          color: 'DDEDFC'.toColor(),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        child: Text(
                                          'status1',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 6.82,
                                                  fontWeight: FontWeight.w300,
                                                  color: '1D65F1'.toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      kodeboking,
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: '323232'.toColor()),
                                    ),
                                    SizedBox(width: 3),
                                    GestureDetector(
                                      onTap: () async {
                                        Fluttertoast.showToast(
                                            msg:
                                                "Kode Booking Berhasil Disalin",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor:
                                                'C01414'.toColor(),
                                            textColor: Colors.white,
                                            fontSize: 16);
                                        await FlutterClipboard.copy(
                                            kodeboking);
                                      },
                                      child: Icon(
                                          Icons.content_copy_outlined,
                                          size: 13,
                                          color: 'C01414'.toColor()),
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
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(left: 22, right: 22, top: 10, bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: 'EBEBEB'.toColor(), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 11, bottom: 11),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              kota1,
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: '626161'.toColor()),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.tram, size: 15,
                            ),
                            SizedBox(width: 5),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width - 126,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          kota2,
                                          style:
                                              GoogleFonts.montserrat()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight
                                                              .bold,
                                                      fontSize: 12,
                                                      color: '626161'
                                                          .toColor()),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.timer_outlined,
                                            color: '626161'.toColor(),
                                            size: 13,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '1j 55m',
                                            style: GoogleFonts
                                                    .montserrat()
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight
                                                            .bold,
                                                    fontSize: 8,
                                                    color: '626161'
                                                        .toColor()),
                                          ),
                                        ],
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(DateFormat.Hm().format(data),
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: '525252'.toColor())),
                                  SizedBox(height: 2),
                                  Text(
                                      DateFormat.MMMd().format(data),
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontSize: 7.33,
                                              fontWeight: FontWeight.w300,
                                              color: '626161'.toColor())),
                                ],
                              ),
                              SizedBox(width: 10),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width - 172,
                                // height: 49,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        '1 jam 55 menit',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontSize: 6.34,
                                                fontWeight: FontWeight.w300,
                                                color: 'C4C4C4'.toColor()),
                                      ),
                                    ),
                                    // SizedBox(height: 1),
                                    Container(
                                      height: 10,
                                      alignment: Alignment.bottomCenter,
                                      child: Image.asset(
                                        'assets/jalur.png',
                                        color: 'C4C4C4'.toColor(),
                                      ),
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          stasiun1,
                                          style: GoogleFonts.poppins()
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  fontSize: 7.24,
                                                  color:
                                                      '626161'.toColor()),
                                        ),
                                        Text(
                                          stasiun2,
                                          style: GoogleFonts.poppins()
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  fontSize: 7.24,
                                                  color:
                                                      '626161'.toColor()),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          terminal2,
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  fontSize: 6,
                                                  color:
                                                      '626161'.toColor()),
                                        ),
                                        Text(
                                          terminal1,
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  fontSize: 6,
                                                  color:
                                                      '626161'.toColor()),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(DateFormat.Hm().format(data),
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: '626161'.toColor())),
                                  SizedBox(height: 2),
                                  Container(
                                    child: Text(
                                        DateFormat.MMMd().format(data),
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontSize: 7.33,
                                                fontWeight: FontWeight.w300,
                                                color: '626161'.toColor())),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                        Container(
                          // width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 19.15,
                                      height: 10.28,
                                      child: Image.asset('assets/kai.png'),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width - 123,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'Kereta Api Indonesia',
                                                    style: GoogleFonts
                                                            .montserrat()
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                            fontSize: 9,
                                                            color: '6C6C6C'
                                                                .toColor()),
                                                  ),
                                                ),
                                                Container(
                                                  height: 10,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'ekonomi',
                                                          style: GoogleFonts
                                                                  .montserrat()
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      6.47,
                                                                  color: '9B9B9B'
                                                                      .toColor()),
                                                        ).tr(),
                                                      ),
                                                      SizedBox(width: 5),
                                                      Container(
                                                        child: Text(
                                                          '|',
                                                          style: GoogleFonts
                                                                  .montserrat()
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      6.47,
                                                                  color: '9B9B9B'
                                                                      .toColor()),
                                                        ),
                                                      ),
                                                      SizedBox(width: 5),
                                                      Container(
                                                        child: Text(
                                                          'QG-686',
                                                          style: GoogleFonts
                                                                  .montserrat()
                                                              .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      6.47,
                                                                  color: '9B9B9B'
                                                                      .toColor()),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 101.39,
                                                  height: 41.39,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red.shade50,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  padding: EdgeInsets.only(
                                                      left: 5,
                                                      right: 5,
                                                      top: 5,
                                                      bottom: 5),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .height,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              25,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  'Model',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  'Airbus A320',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 1,
                                                          thickness: 1,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              25,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  'kursi',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ).tr(),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  'ekonomi',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ).tr(),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 1,
                                                          thickness: 1,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width -
                                                              25,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                child: Text(
                                                                  'denahkursi',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ).tr(),
                                                              ),
                                                              Container(
                                                                child: Text(
                                                                  '-',
                                                                  style: GoogleFonts.montserrat().copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          5.78,
                                                                      color: '626161'
                                                                          .toColor()),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .luggage,
                                                            color: '6C6C6C'
                                                                .toColor(),
                                                            size: 10),
                                                        SizedBox(
                                                            width: 3),
                                                        Container(
                                                          // width: 50,
                                                          child: Text(
                                                            'Bagasi 20Kg',
                                                            style: GoogleFonts.poppins().copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                fontSize:
                                                                    7,
                                                                color: '6C6C6C'
                                                                    .toColor()),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            child: Icon(
                                                                Icons
                                                                    .lunch_dining,
                                                                color: '6C6C6C'
                                                                    .toColor(),
                                                                size: 10),
                                                          ),
                                                          SizedBox(
                                                              width: 3),
                                                          Container(
                                                            width: 50,
                                                            child: Text(
                                                              'makanan',
                                                              style: GoogleFonts.poppins().copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      7,
                                                                  color: '6C6C6C'
                                                                      .toColor()),
                                                            ).tr(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            child: Icon(
                                                                Icons
                                                                    .sports_esports,
                                                                color: '6C6C6C'
                                                                    .toColor(),
                                                                size: 10),
                                                          ),
                                                          SizedBox(
                                                              width: 3),
                                                          Container(
                                                            width: 50,
                                                            child: Text(
                                                              'hiburan',
                                                              style: GoogleFonts.poppins().copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      7,
                                                                  color: '6C6C6C'
                                                                      .toColor()),
                                                            ).tr(),
                                                          ),
                                                        ],
                                                      ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // height: 113,
                padding:
                    EdgeInsets.only(left: 22, top: 13, bottom: 15, right: 22),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset('assets/icon.png',
                                color: 'C01414'.toColor()),
                          ),
                          SizedBox(width: 11),
                          Container(
                            child: Text(
                              'penumpang',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: '373737'.toColor()),
                            ).tr(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 54,
                      decoration: BoxDecoration(
                        color: 'F5F5F5'.toColor(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.only(top: 9, bottom: 10, right: 30),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '1.',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Container(
                                  child: Text(
                                    'Mr.',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                                SizedBox(width: 1),
                                Container(
                                  child: Text(
                                    nama,
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: '323232'.toColor()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'ktp',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ).tr(),
                                      ),
                                      SizedBox(width: 29),
                                      Container(
                                        child: Text(
                                          ':',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        child: Text(
                                          ktp,
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'kategori',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ).tr(),
                                      ),
                                      SizedBox(width: 24),
                                      Container(
                                        child: Text(
                                          ':',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        child: Text(
                                          umur,
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 7,
                                                  color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'kursi',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 7,
                                        color: '5C5C5C'.toColor()),
                                  ).tr(),
                                ),
                                SizedBox(width: 24),
                                Text(
                                  ':',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 7,
                                      color: '5C5C5C'.toColor()),
                                ),
                                SizedBox(width: 3),
                                Row(
                                  children: [
                                    Text(
                                      typepesawat,
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 7,
                                              color: '5C5C5C'.toColor()),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        '/',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 7,
                                                color: '5C5C5C'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        'Kursi',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 7,
                                                color: '5C5C5C'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 2),
                                    Container(
                                      child: Text(
                                        kursi,
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 7,
                                                color: '5C5C5C'.toColor()),
                                      ),
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
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: 'F5F5F5'.toColor(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.only(
                          left: 10, top: 14, right: 15, bottom: 19),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 22.39,
                                height: 12.65,
                                child: Image.asset('assets/kai.png'),
                              ),
                              SizedBox(width: 8.38),
                              Container(
                                child: Text(
                                  'Kerta Api Indonesia',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: '323232'.toColor()),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 14.38),
                          Text(
                            'informasi',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '323232'.toColor()),
                          ).tr(),
                          SizedBox(height: 6),
                          Text(
                            'deskripsiinformasikereta',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 9,
                                color: '323232'.toColor()),
                          ).tr(),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'bantuan',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '323232'.toColor()),
                            ).tr(),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Text(
                              'kontak',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: '323232'.toColor()),
                            ).tr(),
                          ),
                          SizedBox(height: 4),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Text(
                                telfon,
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
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
