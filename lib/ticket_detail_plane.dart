import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'daftarpenerbangan.dart';

class ticket_detail_plane extends StatelessWidget {
  final keberangkatanEditingController = TextEditingController();
  final tujuanEditingController = TextEditingController();
  final jumlahpenumpangEditingController = TextEditingController();
  final pergiEditingController = TextEditingController();
  final pulangEditingController = TextEditingController();
  final kelasEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, bottom: 40),
                      height: 162,
                      width: MediaQuery.of(context).size.width,
                      color: 'C01414'.toColor(),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back_outlined,
                                size: 20, color: Colors.white),
                          ),
                          SizedBox(width: 11),
                          Container(
                              child: Text(
                            'judultiketpesawat',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          ).tr(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 86),
                  child: Positioned(
                    child: Container(
                      // height: 432,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: 'D8D8D8'.toColor()),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width - 128,
                                      child: TextFormField(
                                        controller: keberangkatanEditingController,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: 'C01414'.toColor()),
                                          ),
                                          contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                          hintText: 'Keberangkatan',
                                          hintStyle: GoogleFonts.poppins().copyWith(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w300,
                                              color: '4E4E4E'.toColor()),
                                          prefixIcon: Icon(
                                              Icons.flight_takeoff_outlined,
                                              color: '4E4E4E'.toColor(),
                                              size: 15),
                                          suffixIcon: Icon(Icons.expand_more_outlined,
                                              color: '4E4E4E'.toColor(), size: 15),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 11),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: 'C01414'.toColor(),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(Icons.import_export_outlined,
                                          size: 20, color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: tujuanEditingController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: 'C01414'.toColor()),
                                    ),
                                      contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                      hintText: 'Kota Tujuan',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: '4E4E4E'.toColor()),
                                      prefixIcon: Icon(
                                          Icons.flight_land,
                                          color: '4E4E4E'.toColor(),
                                          size: 15),
                                      suffixIcon: Icon(Icons.expand_more_outlined,
                                          color: '4E4E4E'.toColor(), size: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: jumlahpenumpangEditingController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: 'C01414'.toColor()),
                                    ),
                                      contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                      hintText: 'Jumlah Penumpang',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: '4E4E4E'.toColor()),
                                      prefixIcon: Icon(
                                          Icons.groups,
                                          color: '4E4E4E'.toColor(),
                                          size: 15),
                                      suffixIcon: Icon(Icons.expand_more_outlined,
                                          color: '4E4E4E'.toColor(), size: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: pergiEditingController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: 'C01414'.toColor()),
                                      ),
                                      contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                      hintText: '  Tanggal Pergi',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: '4E4E4E'.toColor()),
                                      prefixIcon: Icon(
                                          Icons.insert_invitation,
                                          color: '4E4E4E'.toColor(),
                                          size: 15),
                                      suffixIcon: Icon(Icons.expand_more_outlined,
                                          color: '4E4E4E'.toColor(), size: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: pulangEditingController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: 'C01414'.toColor()),
                                      ),
                                      contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                      hintText: '  Tanggal Pulang',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: '4E4E4E'.toColor()),
                                      prefixIcon: Icon(
                                          Icons.insert_invitation,
                                          color: '4E4E4E'.toColor(),
                                          size: 15),
                                      suffixIcon: Icon(Icons.expand_more_outlined,
                                          color: '4E4E4E'.toColor(), size: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: kelasEditingController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: 'C01414'.toColor()),
                                      ),
                                      contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                                      hintText: '  Kelas Penerbangan',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: '4E4E4E'.toColor()),
                                      prefixIcon: Icon(
                                          Icons.airplanemode_active,
                                          color: '4E4E4E'.toColor(),
                                          size: 15),
                                      suffixIcon: Icon(Icons.expand_more_outlined,
                                          color: '4E4E4E'.toColor(), size: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              // padding: EdgeInsets.only(left: 13, right: 13),
                              width: MediaQuery.of(context).size.width,
                              height: 34,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: 'C01414'.toColor(),
                                onPressed: () {
                                  Get.to(daftarpenerbangan());
                                },
                                child: Text('tombolcaritiketpesawat',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                ).tr(),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
