import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/successwisata.dart';
import 'package:supercharged/supercharged.dart';

class chekoutwisata extends StatefulWidget {
  const chekoutwisata({Key? key}) : super(key: key);

  @override
  State<chekoutwisata> createState() => _chekoutwisataState();
}

class _chekoutwisataState extends State<chekoutwisata> {
  int _count = 0;
  int cuan = 125000;
  final emailEditingController = TextEditingController();
  final firstnameEditingController = TextEditingController();
  final lastnameEditingController = TextEditingController();
  final numberEditingController = TextEditingController();
  final ktpEditingController = TextEditingController();

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
                'judulchekout',
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
              height: 30,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: 'FFFFFF'.toColor(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      // padding: EdgeInsets.only(top: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 74,
                                height: 58,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/zoo.png'),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(width: 13),
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Taman Safari Bogor',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight:
                                                FontWeight.bold,
                                            color:
                                                '323232'.toColor()),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Text(
                                        'Safari',
                                        style:
                                            GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight
                                                            .w300,
                                                    fontSize: 10,
                                                    color: '747474'
                                                        .toColor()),
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
                                                      fontSize: 10,
                                                      color: '747474'
                                                          .toColor()),
                                        ).tr(),
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        '+',
                                        style:
                                            GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight
                                                            .w300,
                                                    fontSize: 10,
                                                    color: '747474'
                                                        .toColor()),
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        'Panda',
                                        style:
                                            GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight
                                                            .w300,
                                                    fontSize: 10,
                                                    color: '747474'
                                                        .toColor()),
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
                                                      fontSize: 10,
                                                      color: '747474'
                                                          .toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Container(
                            height: 35,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: 'A7A7A7'.toColor(), width: 1),
                                ),
                                contentPadding: EdgeInsets.only(bottom: 10),
                                prefixIcon:
                                    Icon(Icons.date_range, size: 20),
                                hintText: 'Tanggal Kunjungan',
                                hintStyle:
                                    GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: 'A7A7A7'.toColor(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'tiket',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontSize: 11,
                                                fontWeight:
                                                    FontWeight.bold,
                                                color:
                                                    '323232'.toColor()),
                                      ).tr(),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id',
                                              decimalDigits: 0)
                                          .format(cuan),
                                      style: GoogleFonts.poppins()
                                          .copyWith(
                                              fontWeight:
                                                  FontWeight.bold,
                                              fontSize: 12,
                                              color:
                                                  'C01414'.toColor()),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (_count < 1) {
                                          return;
                                        }
                                        setState(() {
                                          _count--;
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove_circle_outline,
                                        size: 20,
                                        color: 'C01414'.toColor(),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      '$_count',
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                              fontWeight:
                                                  FontWeight.bold,
                                              fontSize: 11,
                                              color:
                                                  '323232'.toColor()),
                                    ),
                                    SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _count++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.control_point,
                                        size: 20,
                                        color: 'C01414'.toColor(),
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
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 156,
                    // padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: "D8D8D8".toColor()),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.fromLTRB(13, 10, 19, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                controller: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle: GoogleFonts.montserrat()
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: 'BABABA'.toColor()),
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                            // SizedBox(height: 12),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width - 251,
                                    child: TextFormField(
                                      controller:
                                          firstnameEditingController,
                                      decoration: InputDecoration(
                                        labelText: 'First Name',
                                        labelStyle: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: 'BABABA'.toColor()),
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width -
                                            235,
                                    child: TextFormField(
                                      controller: lastnameEditingController,
                                      decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        labelStyle: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: 'BABABA'.toColor()),
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 12),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width - 251,
                                    child: TextFormField(
                                      controller: numberEditingController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'Phone Number',
                                        labelStyle: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: 'BABABA'.toColor()),
                                        border: UnderlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width:
                                        MediaQuery.of(context).size.width -
                                            235,
                                    child: TextFormField(
                                      controller: ktpEditingController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: 'KTP Number',
                                        labelStyle: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: 'BABABA'.toColor()),
                                        border: UnderlineInputBorder(),
                                      ),
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
                  SizedBox(height: 15),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Icon(
                            Icons.error_outline_outlined,
                            size: 10,
                            color: 'C01414'.toColor(),
                          ),
                        ),
                        SizedBox(width: 9),
                        Container(
                          width: MediaQuery.of(context).size.width - 59,
                          child: Wrap(
                            spacing: 2,
                            children: [
                              Container(
                                child: Text(
                                  'warning3',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '626161'.toColor()),
                                ).tr(),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    'syaratketentuan',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10,
                                            color: 'C01414'.toColor()),
                                  ).tr(),
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
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 81,
        padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'totalpembayaran',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                          color: '8F8D8D'.toColor()),
                    ).tr(),
                  ),
                  Row(
                    children: [
                      Text(
                        NumberFormat.currency(
                                locale: 'id', decimalDigits: 0)
                            .format(cuan),
                        style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: 'C01414'.toColor()),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          '1',
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
                  Get.to(successwisata());
                },
                child: Text(
                  'tombolbayarsekarang',
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
