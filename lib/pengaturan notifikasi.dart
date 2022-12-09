import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class pengaturannotifikasi extends StatefulWidget {
  @override
  State<pengaturannotifikasi> createState() => _pengaturannotifikasiState();
}

class _pengaturannotifikasiState extends State<pengaturannotifikasi> {
  bool value = true;
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;
  bool value4 = true;
  bool value5 = true;

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
                  'pengaturannotifikasi',
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
                        'aktifitas',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 2),
                    Container(
                            child: Text(
                              'deskripsiaktifitas',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: '747474'.toColor()),
                            ).tr(),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 27,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'surel',
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
                              onChanged: (value) => setState(() => this.value = value),
                            ),
                          ),
                        ],
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
                              'notifikasi',
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
                              value: value1,
                              onChanged: (value) => setState(() => this.value1 = value),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Text(
                        'pemberian',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 2),
                    Container(
                      child: Text(
                        'deskripsipemberian',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: '747474'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 14),
                    Container(
                      height: 27,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'surel',
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
                              value: value2,
                              onChanged: (value) => setState(() => this.value2 = value),
                            ),
                          ),
                        ],
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
                              'notifikasi',
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
                              value: value3,
                              onChanged: (value) => setState(() => this.value3 = value),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Text(
                        'pengingat',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: '4A4A4A'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 2),
                    Container(
                      child: Text(
                        'deskripsipengingat',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: '747474'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 14),
                    Container(
                      height: 27,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'surel',
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
                              value: value4,
                              onChanged: (value) => setState(() => this.value4 = value),
                            ),
                          ),
                        ],
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
                              'notifikasi',
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
                              value: value5,
                              onChanged: (value) => setState(() => this.value5 = value),
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
    );
  }
}
