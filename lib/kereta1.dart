import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'my_ticket_screen_detail_kereta.dart';

class kereta1 extends StatelessWidget {
  const kereta1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(my_ticket_screen_detail_kereta());
              },
              child: Ink(
                padding:
                EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // height: 122,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 12,
                                height: 9,
                                child: Image.asset('assets/kai.png'),
                              ),
                              SizedBox(width: 6),
                              Container(
                                child: Text(
                                  'keretaapi',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '6C6C6C'.toColor()),
                                ).tr(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  'Order ID : ',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '6C6C6C'.toColor()),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '103714992',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '6C6C6C'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                        thickness: 1,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              'Bandung',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: '6C6C6C'.toColor()),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 30,
                            height: 5,
                            child: Image.asset('assets/otw.png'),
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: Text(
                              'Yogyakarta',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: '6C6C6C'.toColor()),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.people,
                                  size: 11,
                                  color: 'BCBCBC'.toColor(),
                                ),
                              ),
                              SizedBox(width: 6),
                              Container(
                                child: Text(
                                  '1 Dewasa',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '9C9C9C'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.calendar_month,
                                size: 11, color: 'BCBCBC'.toColor()),
                          ),
                          SizedBox(width: 6),
                          Container(
                            child: Text(
                                DateFormat.yMMMEd().format(data) +
                                    ' ' +
                                    DateFormat.Hm().format(data),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '9C9C9C'.toColor())),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 11,
                                child: Icon(
                                  Icons.av_timer,
                                  size: 11,
                                  color: 'BCBCBC'.toColor(),
                                ),
                              ),
                              SizedBox(width: 6),
                              Container(
                                child: Text(
                                  'perjalanan',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '9C9C9C'.toColor()),
                                ).tr(),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 3, bottom: 3),
                            // width: 71,
                            // height: 17,
                            child: Text(
                              'status2',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: 'D37200'.toColor()),
                            ).tr(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 5,
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
