import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'articles_desc.dart';
import 'artikel1.dart';
import 'artikel2.dart';
import 'artikel3.dart';
import 'artikel4.dart';

class feed_screen extends StatefulWidget {

  @override
  State<feed_screen> createState() => _feed_screenState();
}

class _feed_screenState extends State<feed_screen> {
  final cariapaEditingController = TextEditingController();
  final String nama = 'Yuvan Farid Aziz';

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
                'juduljelajahinspirasi',
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
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: 'C01414'.toColor(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 288,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18))),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 28),
                      child: Container(
                        height: 30,
                        child: TextFormField(
                          controller: cariapaEditingController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, bottom: 18),
                            hintText: 'Mencari Apa?',
                            hintStyle: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '323232'.toColor()),
                            fillColor: 'F5F5F5'.toColor(),
                            filled: true,
                            suffixIcon: Icon(Icons.search_outlined,
                                color: 'C01414'.toColor(), size: 17),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    SingleChildScrollView(
                      clipBehavior: Clip.hardEdge,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap: (){
                                    Get.to(articles_desc());
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: Colors.green,
                                        width: 273,
                                        height: 147,
                                        child: Image.asset('assets/gunung.png'),
                                      ),
                                      SizedBox(height: 12),
                                      Container(
                                        child: Text(
                                          'judulinspirasi1',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.black),
                                        ).tr(),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            nama,
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 10,
                                                color:
                                                '919191'.toColor()),
                                          ),
                                          SizedBox(width: 5),
                                          Container(
                                            child: Image.asset(
                                                'assets/titik.png'),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '2 Weeks ago',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.w300,
                                                fontSize: 10,
                                                color:
                                                '919191'.toColor()),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                GestureDetector(
                                  onTap: (){
                                    Get.to(articles_desc());
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 273,
                                        height: 147,
                                        child: Image.asset('assets/laut.png'),
                                      ),
                                      SizedBox(height: 12),
                                      Container(
                                        child: Text(
                                          'judulinspirasi2',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.black),
                                        ).tr(),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                nama,
                                                style: GoogleFonts.montserrat()
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 10,
                                                    color:
                                                    '919191'.toColor()),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Container(
                                              child: Image.asset(
                                                  'assets/titik.png'),
                                            ),
                                            SizedBox(width: 5),
                                            Container(
                                              child: Text(
                                                '2 Weeks ago',
                                                style: GoogleFonts.montserrat()
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 10,
                                                    color:
                                                    '919191'.toColor()),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 273,
                                        height: 147,
                                        child: Image.asset('assets/gunung.png'),
                                      ),
                                      SizedBox(height: 12),
                                      Container(
                                        child: Text(
                                          'judulinspirasi1',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.black),
                                        ).tr(),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                nama,
                                                style: GoogleFonts.montserrat()
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 10,
                                                    color:
                                                    '919191'.toColor()),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Container(
                                              child: Image.asset(
                                                  'assets/titik.png'),
                                            ),
                                            SizedBox(width: 5),
                                            Container(
                                              child: Text(
                                                '2 Weeks ago',
                                                style: GoogleFonts.montserrat()
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight.w300,
                                                    fontSize: 10,
                                                    color:
                                                    '919191'.toColor()),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: 'FFFFFF'.toColor(),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Hot Articles',
                style: GoogleFonts.montserrat().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              child: Column(
                children: [
                  artikel1(),
                  SizedBox(height: 5),
                  artikel2(),
                  SizedBox(height: 5),
                  artikel3(),
                  SizedBox(height: 5),
                  artikel4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
