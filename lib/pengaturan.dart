import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/pengaturan%20email%20nomor.dart';
import 'package:hotelpedia/pengaturan%20notifikasi.dart';
import 'package:hotelpedia/syaratketentuan.dart';
import 'package:hotelpedia/tentang.dart';
import 'package:supercharged/supercharged.dart';

import 'kebijakanprivasi.dart';

class pengaturan extends StatefulWidget {
  @override
  State<pengaturan> createState() => _pengaturanState();
}

class _pengaturanState extends State<pengaturan> {
  int _value = 0;
  int _value1 = 0;
  bool value = true;

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
                  'judulpengaturan',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: 'C01414'.toColor(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'umum',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'bahasa',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: '4A4A4A'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                color: Colors.grey.shade50,
                                width: 55,
                                height: 20,
                                child: FlatButton(
                                  onPressed: () {
                                    context.setLocale(const Locale('id'));
                                  },
                                  child: Text(
                                    'IDN',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: '4A4A4A'.toColor()),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                color: Colors.grey.shade50,
                                width: 60,
                                height: 20,
                                child: FlatButton(
                                  onPressed: () {
                                    context.setLocale('en_US'.toLocale());
                                  },
                                  child: Text(
                                    'ENG',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: '4A4A4A'.toColor()),
                                  ),
                                ),
                              ),
                              // Container(
                              //   width: 14,
                              //   height: 14,
                              //   child: Radio(
                              //     value: 2,
                              //     groupValue: _value,
                              //     onChanged: (value) {
                              //       setState(() {
                              //         _value = _value;
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(width: 5),
                              // Container(
                              //   child: Text(
                              //     'IDN',
                              //     style: GoogleFonts.montserrat().copyWith(
                              //         fontWeight: FontWeight.w300,
                              //         fontSize: 11,
                              //         color: '626161'.toColor()),
                              //   ),
                              // ),
                              // SizedBox(width: 15),
                              // Container(
                              //   width: 14,
                              //   height: 14,
                              //   child: Radio(
                              //     value: 2,
                              //     groupValue: _value1,
                              //     onChanged: (value) {
                              //       setState(() {
                              //         _value1 = _value1;
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(width: 5),
                              // Container(
                              //   child: Text(
                              //     'ENG',
                              //     style: GoogleFonts.montserrat().copyWith(
                              //         fontWeight: FontWeight.w300,
                              //         fontSize: 11,
                              //         color: '626161'.toColor()),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(pengaturannotifikasi());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'pengaturannotifikasi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      height: 27,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'lokasi',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: '4A4A4A'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Switch.adaptive(
                              activeColor: Colors.white,
                              activeTrackColor: '66DE72'.toColor(),
                              value: value,
                              onChanged: (value) =>
                                  setState(() => this.value = value),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 12),
                    Container(
                      child: Text(
                        'keamananakun',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        Get.to(pengaturanemailnomor());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'emailnomor',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'pengaturankeamanan',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 12),
                    Container(
                      child: Text(
                        'lainnya',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        Get.to(tentang());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'tentang',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
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
                        Get.to(kebijakanprivasi());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'kebijakanprivasi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
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
                        Get.to(syaratketentuan());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'syaratketentuan',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'nilai',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '4A4A4A'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Icon(
                                Icons.chevron_right_outlined,
                                color: 'A6A6A6'.toColor(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
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
