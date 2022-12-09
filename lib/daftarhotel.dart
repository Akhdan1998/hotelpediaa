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

class daftarhotel extends StatefulWidget {
  const daftarhotel({Key? key}) : super(key: key);

  @override
  State<daftarhotel> createState() => _daftarhotelState();
}

class _daftarhotelState extends State<daftarhotel> {
  DateTime data = DateTime.now();
  final String kota1 = 'JKT';
  final int jumlahorang = 1;
  final int jumlahkamar = 1;
  final cariprofilEditingController = TextEditingController();
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2022, 11, 5),
    end: DateTime(2022, 12, 24),
  );
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
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
                  'juduldaftarhotel',
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
        // physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              // width: MediaQuery.of(context).size.width,
              // height: 92,
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
                          'judulmenampilkanhotelterbaik',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: '323232'.toColor()),
                        ).tr(),
                      ),
                      SizedBox(height: 8),
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: 'C01414'.toColor(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.only(left: 9, right: 10, top: 8, bottom: 8),
                              width: MediaQuery.of(context).size.width - 51,
                              // height: 33,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.my_location_outlined,
                                      size: 14, color: Colors.white),
                                  SizedBox(width: 5),
                                  Text(
                                    kota1,
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '|',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                      DateFormat.MMMd().format(data),
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white)),
                                  SizedBox(width: 5),
                                  Text(
                                    '|',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                        DateFormat.MMMd().format(data),
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white)),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      '|',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.people,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      ('$jumlahkamar'),
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    child: Text(
                                      ('kamar, '),
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      ('$jumlahorang'),
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    ('tamu'),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(bottom: 5),
                              alignment: Alignment.topRight,
                              height: 25,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.green,
                              child: Image.asset('assets/button.png'),
                            ),
                          ),
                        ],
                      ),
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
            SizedBox(height: 5),
            pilihhotel1(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                enableDrag: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) => Container(
                  height: 210,
                  padding:
                  EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 5,
                        decoration: BoxDecoration(
                          color: 'D9D9D9'.toColor(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(
                        //     left: 20, top: 20, right: 20, bottom: 15),
                        height: 35,
                        child: TextFormField(
                          controller: cariprofilEditingController,
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.only(left: 10, bottom: 18),
                            hintText: 'Cari Hotel berdasarkan lokasi',
                            hintStyle: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: 'C4C4C4'.toColor()),
                            fillColor: 'F5F5F5'.toColor(),
                            filled: true,
                            prefixIcon: Icon(Icons.search_outlined,
                                color: 'C4C4C4'.toColor(), size: 17),
                            border: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        decoration: BoxDecoration(
                          color: 'F5F5F5'.toColor(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.only(
                            left: 16, top: 9, right: 16, bottom: 9),
                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.calendar_month,
                                      size: 12,
                                      color: 'C4C4C4'.toColor(),
                                    ),
                                  ),
                                  SizedBox(width:10),
                                  GestureDetector(
                                    onTap: pickDateRange,
                                    child: Text(
                                      '${start.day} ${start.month}',
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: 'C4C4C4'.toColor()),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    '-',
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 11,
                                        color: 'C4C4C4'.toColor()),
                                  ),
                                  SizedBox(width: 3),
                                  GestureDetector(
                                    onTap: pickDateRange,
                                    child: Text(
                                      '${end.day} ${end.month} ${end.year}',
                                      style: GoogleFonts.montserrat()
                                          .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: 'C4C4C4'.toColor()),
                                    ),
                                  ),
                                  // SizedBox(width: 29),
                                ],
                              ),
                            ),
                            Text(
                              '|',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: 'C4C4C4'.toColor()),
                            ),
                            // SizedBox(width: 22),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.people,
                                        size: 12,
                                        color: 'C4C4C4'.toColor(),
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '1 Kamar, 1 Tamu',
                                      style: GoogleFonts.montserrat().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: 'C4C4C4'.toColor()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 34,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: 'C01414'.toColor(),
                          onPressed: () {},
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
  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}

