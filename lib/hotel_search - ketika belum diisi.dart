import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class hotelsearch extends StatefulWidget {
  const hotelsearch({Key? key}) : super(key: key);

  @override
  State<hotelsearch> createState() => _hotelsearchState();
}

class _hotelsearchState extends State<hotelsearch> {
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
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: 'FFFFFF'.toColor(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: hotelsearchEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 10),
                    hintText: 'Search for hotel, city, location',
                    hintStyle: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 11,
                        color: 'C4C4C4'.toColor()),
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
                            'kota',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ).tr(),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Ambon',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11,
                                                  color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Bali',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Balikpapan',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Banda Aceh',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Bandar Lampung',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Bandung',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Banjarbaru',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Banjarmasin',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Banyumas',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Banyuwangi',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Batam',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Batu',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 11,
                                              color: '4D4D4D'.toColor()),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                            Icons.chevron_right_outlined,
                                            size: 15,
                                            color: '4D4D4D'.toColor()),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
