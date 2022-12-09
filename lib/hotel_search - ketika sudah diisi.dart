import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/pilihhotel1.dart';
import 'package:hotelpedia/pilihhotel2.dart';
import 'package:hotelpedia/pilihhotel3.dart';
import 'package:hotelpedia/pilihhotel4.dart';
import 'package:supercharged/supercharged.dart';

class hotelsearch2 extends StatefulWidget {
  const hotelsearch2({Key? key}) : super(key: key);

  @override
  State<hotelsearch2> createState() => _hotelsearch2State();
}

class _hotelsearch2State extends State<hotelsearch2> {
  final hotelsearchEditingController = TextEditingController();

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
                // height: 35,
                width: MediaQuery.of(context).size.width - 71,
                decoration: BoxDecoration(
                  color: 'FFFFFF'.toColor(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: hotelsearchEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10),
                    hintText: 'Malang',
                    hintStyle: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                        color: Colors.black),
                    prefixIcon: Icon(Icons.search_outlined,
                        size: 20, color: 'C4C4C4'.toColor()),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: 'C01414'.toColor(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 18, right: 23),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'judulpilihhotel',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ).tr(),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              pilihhotel1(),
              SizedBox(height: 5),
              pilihhotel2(),
              SizedBox(height: 5),
              pilihhotel3(),
              SizedBox(height: 5),
              pilihhotel4(),
            ],
          ),
        ),
      ),
    );
  }
}
