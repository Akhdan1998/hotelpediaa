import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'my_ticket_screen_detail_pesawat.dart';

class penerbangan2 extends StatelessWidget {
  const penerbangan2({Key? key}) : super(key: key);

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
                Get.to(my_ticket_screen_detail());
              },
              child: Ink(
                padding:
                EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 122,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                // width: 12,
                                // height: 9,
                                child: Icon(
                                  Icons.two_wheeler, color: Colors.yellow, size: 15,),
                              ),
                              SizedBox(width: 6),
                              Container(
                                child: Text(
                                  'Vespa Kuning',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: '6C6C6C'.toColor()),
                                ),
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
                              'Depok',
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
                              'Bekasi',
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
                                  'Pulang Pegih',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      color: '9C9C9C'.toColor()),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: 'DDEDFC'.toColor(),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 3, bottom: 3),
                            width: 65,
                            height: 17,
                            child: Text(
                              'On Process',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: '1D65F1'.toColor()),
                            ),
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
