import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/wahana.dart';
import 'package:supercharged/supercharged.dart';

import 'buttonmodels.dart';
import 'buttonreservasi.dart';
import 'hotel.dart';
import 'kereta.dart';
import 'penerbangan.dart';
import 'package:hotelpedia/hotel.dart';

class reservasi extends StatefulWidget {

  @override
  State<reservasi> createState() => _reservasiState();
}

class _reservasiState extends State<reservasi> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  late bool? isRead;
  String selectedId = '';
  List<Select> select = [
    Select(
      id: '1',
      pilih: 'Hotel',
    ),
    Select(
      id: '2',
      pilih: 'Penerbangan',
    ),
    Select(
      id: '3',
      pilih: 'Kereta Api',
    ),
    Select(
      id: '4',
      pilih: 'Wahana',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: 'C01414'.toColor(),
        elevation: 0,
        title: Container(
                child: Text(
                  'judulreservasi',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ).tr(),
              ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(18), topLeft: Radius.circular(18))
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    // height: 40,
                    width: MediaQuery.of(context).size.width,
                    // padding: EdgeInsets.only(left: 20, right: 20),
                    child: SingleChildScrollView(
                      clipBehavior: Clip.hardEdge,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // buttonreservasi(
                          //     select: select[0],
                          //     isActiv: (selectedId == select[0].id)
                          //         ? true
                          //         : false,
                          //     onSelected: (value) {
                          //       setState(() {
                          //         selectedId = value;
                          //       });
                          //     }
                          // ),
                          // buttonreservasi(
                          //     select: select[1],
                          //     isActiv: (selectedId == select[1].id)
                          //         ? true
                          //         : false,
                          //     onSelected: (value) {
                          //       setState(() {
                          //         selectedId = value;
                          //       });
                          //     }
                          // ),
                          // buttonreservasi(
                          //     select: select[2],
                          //     isActiv: (selectedId == select[2].id)
                          //         ? true
                          //         : false,
                          //     onSelected: (value) {
                          //       setState(() {
                          //         selectedId = value;
                          //       });
                          //     }
                          // ),
                          // buttonreservasi(
                          //     select: select[3],
                          //     isActiv: (selectedId == select[3].id)
                          //         ? true
                          //         : false,
                          //     onSelected: (value) {
                          //       setState(() {
                          //         selectedId = value;
                          //       });
                          //     }
                          // ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.bounceInOut);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: (isRead == true) ? Colors.white : 'C01414'.toColor(),
                                  color: 'C01414'.toColor(),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.only(left: 9, right: 9, top: 5, bottom: 5),
                              // width: 49,
                              // height: 28,
                              child: Text(
                                'Hotel',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  // color: (isRead == true) ? 'C01414'.toColor() : Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 17),
                          GestureDetector(
                            onTap: () {
                              pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.bounceInOut);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: 'C01414'.toColor(),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.only(left: 9, right: 9, top: 5, bottom: 5),
                              // width: 100,
                              // height: 28,
                              child: Text(
                                'penerbangan',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ).tr(),
                            ),
                          ),
                          SizedBox(width: 17),
                          GestureDetector(
                            onTap: () {
                              pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.bounceInOut);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: 'C01414'.toColor(),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.only(left: 9, right: 9, top: 5, bottom: 5),
                              // width: 80,
                              // height: 28,
                              child: Text(
                                'keretaapi',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ).tr(),
                            ),
                          ),
                          SizedBox(width: 17),
                          GestureDetector(
                            onTap: () {
                              pageController.animateToPage(3,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.bounceInOut);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: 'C01414'.toColor(),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              padding: EdgeInsets.only(left: 9, right: 9, top: 5, bottom: 5),
                              // width: 70,
                              // height: 28,
                              child: Text(
                                'Wahana',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 24, right: 24, top: 12),
                    // alignment: Alignment.center,
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height - 215,
                    width: MediaQuery.of(context).size.width,
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageChanged = index;
                        });
                        print(pageChanged);
                      },
                      children: [
                        hotel(),
                        penerbangan(),
                        kereta(),
                        wahana(),
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
