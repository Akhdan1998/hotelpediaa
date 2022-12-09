import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/ulasan1.dart';
import 'package:hotelpedia/ulasan2.dart';
import 'package:supercharged/supercharged.dart';

class ulasan extends StatelessWidget {
  const ulasan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  'judululasanhotel',
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
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                color: 'C01414'.toColor(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(20, 14, 0, 14),
                  child: Text(
                    'judulmenampilkanulasan',
                    style: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: '323232'.toColor()),
                  ).tr(),
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Marcopolo Hotel Resort and Spa',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: '323232'.toColor()),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      child: Text(
                        'Menteng, Jakarta',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: '323232'.toColor()),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ulasan1(),
                    ulasan2(),
                    ulasan1(),
                    ulasan2(),
                    ulasan1(),
                    ulasan2(),
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
