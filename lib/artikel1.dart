import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'articles_desc.dart';

class artikel1 extends StatelessWidget {
  final String nama = 'Yuvan Farid Aziz';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.to(articles_desc());
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          width: MediaQuery.of(context).size.width,
          // height: 73,
          color: 'FFFFFF'.toColor(),
          child: Row( crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      'deskripsiartikel',
                      maxLines: 2,
                      style: GoogleFonts.montserrat()
                          .copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 11,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 15),
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
              Container(
                width: 60,
                child: Image.asset('assets/artikel.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
