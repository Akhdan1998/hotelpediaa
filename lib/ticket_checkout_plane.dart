import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/signin.dart';
import 'package:hotelpedia/signup.dart';
import 'package:hotelpedia/succes.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class ticket_checkout_pesawat extends StatefulWidget {
  const ticket_checkout_pesawat({Key? key}) : super(key: key);

  @override
  State<ticket_checkout_pesawat> createState() => _ticket_checkout_pesawatState();
}

class _ticket_checkout_pesawatState extends State<ticket_checkout_pesawat> {
  String keberangkatan = 'Jakarta';
  String tujuan = 'Surabaya';
  String bandara1 = 'CGK';
  String bandara2 = 'SUB';
  DateTime data = DateTime.now();
  int total = 1226300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: 'C01414'.toColor(),
        elevation: 0,
        title: Row(
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
                'judulform',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).tr(),
            ),
          ],
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
              // height: 114,
              color: 'C01414'.toColor(),
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          keberangkatan,
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 45,
                          height: 5,
                          child: Image.asset('assets/otw.png'),
                        ),
                        SizedBox(width: 6),
                        Text(
                          tujuan,
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.only(left: 20, right: 3),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'pergi',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                                SizedBox(width: 17),
                                Text(
                                  '|',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  bandara1,
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  '-',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  bandara2,
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 6),
                                Image.asset('assets/titik.png'),
                                SizedBox(width: 6),
                                Text(
                                    DateFormat.yMMMEd().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor())),
                                SizedBox(width: 6),
                                Image.asset('assets/titik.png'),
                                SizedBox(width: 6),
                                Text(DateFormat.Hm().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor())),
                                SizedBox(width: 6),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 5,
                                    child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: '626161'.toColor()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'pulang',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: '626161'.toColor()),
                                  ).tr(),
                                ),
                                SizedBox(width: 7),
                                Text(
                                  '|',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  bandara1,
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  '-',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  bandara2,
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '626161'.toColor()),
                                ),
                                SizedBox(width: 6),
                                Image.asset('assets/titik.png'),
                                SizedBox(width: 6),
                                Text(
                                    DateFormat.yMMMEd().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor())),
                                SizedBox(width: 6),
                                Image.asset('assets/titik.png'),
                                SizedBox(width: 6),
                                Text(DateFormat.Hm().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w300,
                                        color: '626161'.toColor())),
                                SizedBox(width: 6),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 5,
                                    child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: '626161'.toColor()),
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
              width: MediaQuery.of(context).size.width,
              // height: 41,
              color: 'FCDDDD'.toColor(),
              padding: EdgeInsets.only(left: 20, top: 9, bottom: 9),
              child: Row(
                children: [
                  Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                      color: 'C01414'.toColor(),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.lock, color: Colors.white, size: 15),
                  ),
                  SizedBox(width: 9),
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.offAll(signin());
                          },
                          child: Container(
                            child: Text(
                              'login',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: 'C01414'.toColor()),
                            ).tr(),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          child: Text(
                            'atau',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 2),
                        GestureDetector(
                          onTap: () {
                            Get.offAll(signup());
                          },
                          child: Container(
                            child: Text(
                              'buat',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: 'C01414'.toColor()),
                            ).tr(),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          child: Text(
                            'pengalaman',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            'kemudahan',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 2),
                        Container(
                          child: Text(
                            'benefit',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 102,
              padding:
                  EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'detailpemesanan',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ).tr(),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: 'F5F5F5'.toColor(),
                        borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    height: 35,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'formdata',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 13,
                            child: Image.asset('assets/add.png'),
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
              // height: 85,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'detailpenumpang',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ).tr(),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: 'F5F5F5'.toColor(),
                        borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    height: 35,
                    padding: EdgeInsets.only(left: 20, right: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'formdatapenumpang',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: 10,
                          height: 10,
                          child: Image.asset(
                            'assets/titik.png',
                            color: 'C01414'.toColor(),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          width: MediaQuery.of(context).size.width - 259,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1 Dewasa',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: 'C01414'.toColor()),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 13,
                                  child: Image.asset('assets/add.png'),
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
              // height: 121,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'fasilitasextra',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ).tr(),
                    ),
                    SizedBox(height: 9),
                    Container(
                      decoration: BoxDecoration(
                          color: 'F5F5F5'.toColor(),
                          borderRadius: BorderRadius.circular(5)),
                      // height: 82,
                      padding: EdgeInsets.only(
                          left: 13, right: 10, top: 11, bottom: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.luggage,
                                  color: '6C6C6C'.toColor(), size: 12),
                              SizedBox(width: 7),
                              Container(
                                width: MediaQuery.of(context).size.width -
                                    82,
                                // height: 25,
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'bagasi',
                                            style:
                                                GoogleFonts.montserrat()
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight
                                                                .w300,
                                                        fontSize: 10,
                                                        color: '626161'
                                                            .toColor()),
                                          ).tr(),
                                        ),
                                        SizedBox(height: 3),
                                        Container(
                                          child: Text(
                                            'deskripsibaagasi',
                                            style:
                                                GoogleFonts.montserrat()
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight
                                                                .w300,
                                                        fontSize: 8,
                                                        color: '626161'
                                                            .toColor()),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        child: Icon(
                                          Icons.library_add,
                                          color: 'C01414'.toColor(),
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.restaurant,
                                    color: '6C6C6C'.toColor(),
                                    size: 12),
                                SizedBox(width: 7),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width -
                                          82,
                                  // height: 25,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'makanan',
                                              style: GoogleFonts
                                                      .montserrat()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight
                                                              .w300,
                                                      fontSize: 10,
                                                      color: '626161'
                                                          .toColor()),
                                            ).tr(),
                                          ),
                                          SizedBox(height: 3),
                                          Container(
                                            child: Text(
                                              'deskripsimakanan',
                                              style: GoogleFonts
                                                      .montserrat()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight
                                                              .w300,
                                                      fontSize: 8,
                                                      color: '626161'
                                                          .toColor()),
                                            ).tr(),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          child: Icon(
                                            Icons.library_add,
                                            color: 'C01414'.toColor(),
                                            size: 15,
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
                  ],
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 130,
                decoration: BoxDecoration(
                  color: 'F5F5F5'.toColor(),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding:
                    EdgeInsets.only(left: 14, top: 14, bottom: 19),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 21.09,
                              height: 11.36,
                              child: Image.asset('assets/garuda.png'),
                            ),
                            SizedBox(width: 9),
                            Container(
                              child: Text(
                                'Garuda Indonesia',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.38),
                      Container(
                        child: Text(
                          'informasi',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.black),
                        ).tr(),
                      ),
                      SizedBox(height: 6),
                      Container(
                        child: Wrap(
                          children: [
                            Container(
                              child: Text(
                                'menekan',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: Colors.black),
                              ).tr(),
                            ),
                            SizedBox(width: 2),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Text(
                                  'syaratketentuan',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: 'C01414'.toColor()),
                                ).tr(),
                              ),
                            ),
                            SizedBox(width: 2),
                            Container(
                              child: Text(
                                'dan',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: Colors.black),
                              ).tr(),
                            ),
                            SizedBox(width: 2),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Text(
                                  'kebijakanprivasi',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: 'C01414'.toColor()),
                                ).tr(),
                              ),
                            ),
                            SizedBox(width: 2),
                            Container(
                              child: Text(
                                'PT. Garuda Indonesia',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: Colors.black),
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
          ],
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
                  Row(
                    children: [
                      Container(
                        width: 9,
                        height: 9,
                        child: Image.asset('assets/cuan.png'),
                      ),
                      SizedBox(width: 6),
                      Text(
                        '5000 Point',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w300,
                            color: '8F8D8D'.toColor()),
                      ),
                    ],
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
                  Get.to(succes());
                },
                child: Text('tombollanjutkanpembayaran',
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
