import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/pilihhotel1.dart';
import 'package:hotelpedia/pilihhotel2.dart';
import 'package:hotelpedia/pilihhotel3.dart';
import 'package:hotelpedia/pilihhotel4.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'kamar1.dart';
import 'kamar2.dart';

class pilihkamar extends StatefulWidget {
  const pilihkamar({Key? key}) : super(key: key);

  @override
  State<pilihkamar> createState() => _pilihkamarState();
}

class _pilihkamarState extends State<pilihkamar> {
  DateTime data = DateTime.now();
  final String kota1 = 'JKT';
  final int jumlahorang = 1;
  final int jumlahkamar = 1;
  final hargamaximumEditingController = TextEditingController();
  final hargaminimumEditingController = TextEditingController();
  bool value4 = true;
  bool value5 = true;
  int _value = 0;

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
            Text(
              'Marcopolo Hotel Resort and Spa',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 47,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 20, top: 15, right: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'judulmenampilkanbudget',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ).tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            kamar1(),
            SizedBox(height: 5),
            kamar2(),
            SizedBox(height: 5),
            kamar1(),
            SizedBox(height: 5),
            kamar2(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 48,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                // isDismissible: true,
                // enableDrag: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) => Container(
                  height: 700,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
                  child: SingleChildScrollView(
                    clipBehavior: Clip.hardEdge,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 5,
                          decoration: BoxDecoration(
                            color: 'D9D9D9'.toColor(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'tombolsaring',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: '494949'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 13),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'rentangharga',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: '494949'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 11),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 146,
                                height: 35,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: hargaminimumEditingController,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 10, bottom: 18),
                                    hintText: 'Harga Minimum',
                                    hintStyle: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10,
                                            color: 'C4C4C4'.toColor()),
                                    fillColor: 'F5F5F5'.toColor(),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 322,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: 'D9D9D9'.toColor(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Container(
                                width: 146,
                                height: 35,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: hargamaximumEditingController,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 10, bottom: 18),
                                    hintText: 'Harga Maximum',
                                    hintStyle: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10,
                                            color: 'C4C4C4'.toColor()),
                                    fillColor: 'F5F5F5'.toColor(),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'hargaterakhir',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '494949'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 16),
                        Container(
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: 'FFDDDD'.toColor(),
                                    border: Border.all(
                                        width: 1, color: 'C01414'.toColor()),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 13, right: 13, top: 7, bottom: 7),
                                  child: Text(
                                    '<Rp 200rb',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: 'D04646'.toColor()),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: 'FFDDDD'.toColor(),
                                    border: Border.all(
                                        width: 1, color: 'C01414'.toColor()),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 13, right: 13, top: 7, bottom: 7),
                                  child: Text(
                                    '<Rp 500rb',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: 'D04646'.toColor()),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: 'FFDDDD'.toColor(),
                                    border: Border.all(
                                        width: 1, color: 'C01414'.toColor()),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 13, right: 13, top: 7, bottom: 7),
                                  child: Text(
                                    'Rp 500rb - Rp 1 Juta',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: 'D04646'.toColor()),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: 'FFDDDD'.toColor(),
                                    border: Border.all(
                                        width: 1, color: 'C01414'.toColor()),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 13, right: 13, top: 7, bottom: 7),
                                  child: Text(
                                    '>Rp 1 Juta',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: 'D04646'.toColor()),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 27,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'makan',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: '494949'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Switch.adaptive(
                                  activeColor: Colors.white,
                                  activeTrackColor: '66DE72'.toColor(),
                                  value: value4,
                                  onChanged: (value) =>
                                      setState(() => this.value4 = value),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                        Container(
                          height: 27,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'schedule',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: '494949'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                child: Switch.adaptive(
                                  activeColor: Colors.white,
                                  activeTrackColor: '66DE72'.toColor(),
                                  value: value5,
                                  onChanged: (value) =>
                                      setState(() => this.value5 = value),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'ratinghotel',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: '494949'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'semuaratting',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: '626161'.toColor()),
                                ).tr(),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = _value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  '4,5+ (Fantastis)',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: '626161'.toColor()),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) =>
                                      setState(() => this._value = _value),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  '4+ (Bagus)',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: '626161'.toColor()),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = _value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  '3+ (Oke)',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: '626161'.toColor()),
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                child: Radio(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = _value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 55),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 34,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: 'C01414'.toColor(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('tombolterap',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                            ).tr(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.filter_alt_outlined, color: 'C01414'.toColor()),
                SizedBox(width: 9),
                Text(
                  'tombolsaring',
                  style: GoogleFonts.montserrat().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: 'C01414'.toColor()),
                ).tr(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
