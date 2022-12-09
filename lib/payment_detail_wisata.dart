import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class payment_detail_kereta extends StatelessWidget {
  const payment_detail_kereta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    final String kamarmalam = '1 Room, 2 Guest, 1 Night';
    final String nama = 'Yuvan Farid Aziz';
    final String ktp = '31741904980004';
    final String hp = '081239849076';
    final String kodetransaksi = '103714992';
    final String kodeboking = 'A1123JKD6281';
    int cuan = 1000000;
    int nominal = 100000;
    int biaya = 4500;
    int total = 1226300;
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
                  'judulpaymentdetail',
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
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      // height: 228,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: 'D8D8D8'.toColor(), width: 1)),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child:
                                        Image.asset('assets/kamarhotel1.png'),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              122,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Taman Safari Bogor',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: '323232'
                                                                  .toColor()),
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: Icon(
                                                          Icons.star_outlined,
                                                          size: 10,
                                                          color: 'FFCE31'
                                                              .toColor()),
                                                    ),
                                                    SizedBox(width: 3),
                                                    Container(
                                                      child: Icon(
                                                          Icons.star_outlined,
                                                          size: 10,
                                                          color: 'FFCE31'
                                                              .toColor()),
                                                    ),
                                                    SizedBox(width: 3),
                                                    Container(
                                                      child: Icon(
                                                          Icons.star_outlined,
                                                          size: 10,
                                                          color: 'FFCE31'
                                                              .toColor()),
                                                    ),
                                                    SizedBox(width: 3),
                                                    Container(
                                                      child: Icon(
                                                          Icons.star_outlined,
                                                          size: 10,
                                                          color: 'FFCE31'
                                                              .toColor()),
                                                    ),
                                                    SizedBox(width: 4),
                                                    Container(
                                                      child: Text(
                                                        '4.0',
                                                        style: GoogleFonts
                                                                .montserrat()
                                                            .copyWith(
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: 'FFCE31'
                                                                    .toColor()),
                                                      ),
                                                    ),
                                                  ],
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
                                                  'Safari',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 8,
                                                              color: '747474'
                                                                  .toColor()),
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Container(
                                                child: Text(
                                                  'siang',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 8,
                                                              color: '747474'
                                                                  .toColor()),
                                                ).tr(),
                                              ),
                                              SizedBox(width: 2),
                                              Container(
                                                child: Text(
                                                  '+',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 8,
                                                              color: '747474'
                                                                  .toColor()),
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Container(
                                                child: Text(
                                                  'Panda',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 8,
                                                              color: '747474'
                                                                  .toColor()),
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Container(
                                                child: Text(
                                                  'hari',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 8,
                                                              color: '747474'
                                                                  .toColor()),
                                                ).tr(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text(
                                                  '1 Tiket',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontSize: 9,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: '323232'
                                                                  .toColor()),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  ' - ',
                                                  style:
                                                  GoogleFonts.montserrat()
                                                      .copyWith(
                                                      fontSize: 9,
                                                      fontWeight:
                                                      FontWeight
                                                          .w300,
                                                      color: '323232'
                                                          .toColor()),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                    DateFormat.yMMMMEEEEd().format(data),
                                                    style: GoogleFonts.montserrat()
                                                        .copyWith(
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.w300,
                                                        color: '323232'.toColor())),
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
                            SizedBox(height: 13),
                            Container(
                              child: Text(
                                'user',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.black),
                              ).tr(),
                            ),
                            SizedBox(height: 3),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'nama',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '616161'.toColor()),
                                    ).tr(),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 104,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            nama,
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 9,
                                                    color: '616161'.toColor()),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Text(
                                                  'ktp',
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 9,
                                                              color: '616161'
                                                                  .toColor()),
                                                ).tr(),
                                              ),
                                              SizedBox(width: 3),
                                              Container(
                                                child: Text(
                                                  ktp,
                                                  style:
                                                      GoogleFonts.montserrat()
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 9,
                                                              color: '616161'
                                                                  .toColor()),
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
                            SizedBox(height: 1),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'nomorponsel',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '616161'.toColor()),
                                    ).tr(),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    child: Text(
                                      hp,
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '616161'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 11, right: 20, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'tanggaltransaksi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: '6F6F6F'.toColor()),
                    ).tr(),
                  ),
                  Container(
                    child: Text(
                        DateFormat.Hm().format(data) +
                            " WIB, " +
                            DateFormat.yMMMMd().format(data) +
                            " ",
                        // DateTime.now().toString(),
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: '3C3D3F'.toColor())),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20, top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'deskripsitransaksi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: '6F6F6F'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Wrap(
                      spacing: 3,
                      children: [
                        Container(
                          child: Text(
                            'pembayaranhotel',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            kodetransaksi,
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ),
                        ),
                        Container(
                          child: Text(
                            'senilai',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'Rp ',
                                    decimalDigits: 0)
                                .format(cuan),
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ),
                        ),
                        Container(
                          child: Text(
                            'padatanggal',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                              DateFormat.Hm().format(data) +
                                  " WIB, " +
                                  DateFormat.yMMMMd().format(data) +
                                  " ",
                              // DateTime.now().toString(),
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: '3C3D3F'.toColor())),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 11, right: 20, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'kodebooking',
                      style: GoogleFonts.montserrat().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: '6F6F6F'.toColor()),
                    ).tr(),
                  ),
                  Container(
                    child: Text(kodeboking,
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: '3C3D3F'.toColor())),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding:
                  EdgeInsets.only(left: 20, top: 12, bottom: 12, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'juduldetailpembayaran',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: '3C3D3F'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'nominal2',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '6F6F6F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id', decimalDigits: 0)
                                .format(nominal),
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
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
                          child: Text(
                            'biaya',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '6F6F6F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id', decimalDigits: 0)
                                .format(biaya),
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: '3C3D3F'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'totalpembayaran',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: '6F6F6F'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id', decimalDigits: 0)
                                .format(total),
                            style: GoogleFonts.montserrat().copyWith(
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
            ),
            Divider(
              thickness: 5,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
