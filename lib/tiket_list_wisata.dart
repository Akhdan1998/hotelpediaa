import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/paketwisata1.dart';
import 'package:hotelpedia/paketwisata2.dart';
import 'package:supercharged/supercharged.dart';

class tiket_list_wisata extends StatelessWidget {
  const tiket_list_wisata({Key? key}) : super(key: key);

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
                'Taman Safari Bogor',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: 'C01414'.toColor(),
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 19, bottom: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
              ),
              child: Text(
                'paket',
                style: GoogleFonts.montserrat().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: '323232'.toColor()),
              ).tr(),
            ),
          ),
          SizedBox(height: 5),
          paket1(),
          SizedBox(height: 5),
          paket2(),
        ],
      ),
    );
  }
}
