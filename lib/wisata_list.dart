import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/recomenwisata1.dart';
import 'package:hotelpedia/recomenwisata2.dart';
import 'package:supercharged/supercharged.dart';

import 'destinasiwisata1.dart';
import 'destinasiwisata2.dart';

class wisata_list extends StatefulWidget {
  const wisata_list({Key? key}) : super(key: key);

  @override
  State<wisata_list> createState() => _wisata_listState();
}

class _wisata_listState extends State<wisata_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/backgroundwisata.png',
                          alignment: Alignment.topCenter),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 42,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.arrow_back,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Container(
                      child: Text(
                        'cariwisata',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ).tr(),
                    ),
                  ),
                  Positioned(
                    top: 139,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 50,
                        //     offset: const Offset(1, 1),
                        //     color: Colors.black26,
                        //   ),
                        //   BoxShadow(
                        //     blurRadius: 50,
                        //     offset: const Offset(-1, 1),
                        //     color: Colors.black26,
                        //   ),
                        //   BoxShadow(
                        //     blurRadius: 50,
                        //     offset: const Offset(1, -1),
                        //     color: Colors.black26,
                        //   ),
                        // ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(18),
                            topLeft: Radius.circular(18)),
                      ),
                      padding: EdgeInsets.only(left: 20, top: 19, right: 20),
                      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'rekomendasiwisata',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: '4D4B4B'.toColor()),
                            ).tr(),
                          ),
                          SizedBox(height: 15),
                          recomenwisata1(),
                          SizedBox(height: 18),
                          recomenwisata2(),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
