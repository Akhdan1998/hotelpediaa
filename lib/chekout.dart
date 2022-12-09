import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/payment_method.dart';
import 'package:supercharged/supercharged.dart';
import 'package:intl/intl.dart';

class chekout extends StatefulWidget {
  const chekout({Key? key}) : super(key: key);

  @override
  State<chekout> createState() => _chekoutState();
}

class _chekoutState extends State<chekout> {
  DateTime data = DateTime.now();
  final emailEditingController = TextEditingController();
  final firstnameEditingController = TextEditingController();
  final lastnameEditingController = TextEditingController();
  final numberEditingController = TextEditingController();
  final ktpEditingController = TextEditingController();
  final int cuan = 399000;
  final int breakfast = 24000;
  final int totalbreakfast = 48000;
  final int pay = 237000;
  final bool checkedValue = true;

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
                  'judulchekout',
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
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    color: Colors.white),
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 84,
                      height: 57,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/pilihhotel3.png')),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(width: 13),
                    Container(
                      width: MediaQuery.of(context).size.width - 137,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deluxe Room Pool View',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '323232'.toColor()),
                          ),
                          SizedBox(height: 4),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Marcopolo Hotel Resort',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8,
                                      color: '747474'.toColor()),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star_outlined,
                                        size: 10,
                                        color: 'FFCE31'.toColor()),
                                    SizedBox(width: 3),
                                    Icon(Icons.star_outlined,
                                        size: 10,
                                        color: 'FFCE31'.toColor()),
                                    SizedBox(width: 3),
                                    Icon(Icons.star_outlined,
                                        size: 10,
                                        color: 'FFCE31'.toColor()),
                                    SizedBox(width: 3),
                                    Icon(Icons.star_outlined,
                                        size: 10,
                                        color: 'FFCE31'.toColor()),
                                    SizedBox(width: 4),
                                    Container(
                                      child: Text(
                                        '4.0',
                                        style: GoogleFonts.montserrat()
                                            .copyWith(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w300,
                                                color: 'FFCE31'.toColor()),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Menteng, Jakarta',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 8,
                                color: '747474'.toColor()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 46,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(DateFormat.yMMMEd().format(data),
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                  color: '323232'.toColor())),
                          SizedBox(width: 3),
                          Container(
                            width: MediaQuery.of(context).size.width - 168,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    DateFormat.yMMMEd().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w300,
                                            color: '323232'.toColor())),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    child: Image.asset(
                                      'assets/add.png',
                                      color: '898989'.toColor(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          '1 Room, 2 Guest, 1 Night',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: '323232'.toColor()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 156,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.fromLTRB(13, 10, 19, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: 'BABABA'.toColor()),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      // SizedBox(height: 12),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width - 251,
                              child: TextFormField(
                                controller: firstnameEditingController,
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                  labelStyle: GoogleFonts.montserrat()
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: 'BABABA'.toColor()),
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width - 235,
                              child: TextFormField(
                                controller: lastnameEditingController,
                                decoration: InputDecoration(
                                  labelText: 'Last Name',
                                  labelStyle: GoogleFonts.montserrat()
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: 'BABABA'.toColor()),
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 12),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width - 251,
                              child: TextFormField(
                                controller: numberEditingController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  labelStyle: GoogleFonts.montserrat()
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: 'BABABA'.toColor()),
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width - 235,
                              child: TextFormField(
                                controller: ktpEditingController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'KTP Number',
                                  labelStyle: GoogleFonts.montserrat()
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: 'BABABA'.toColor()),
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 45,
                    decoration: BoxDecoration(
                      color: 'F5F5F5'.toColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'My Belance:',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.w300,
                                color: '323232'.toColor()),
                          ),
                        ),
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                    locale: 'id ', decimalDigits: 0)
                                .format(cuan),
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: '323232'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: MediaQuery.of(context).size.width - 145,
                    // height: 45,
                    decoration: BoxDecoration(
                      color: 'F5F5F5'.toColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'chekin',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Row(
                              children: [
                                Text(
                                    DateFormat.Hm().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: '323232'.toColor())),
                                Text('-',
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: '323232'.toColor())),
                                Text(
                                    DateFormat.Hm().format(data),
                                    style: GoogleFonts.montserrat()
                                        .copyWith(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: '323232'.toColor())),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'chekout',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Text(DateFormat.Hm().format(data),
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: '323232'.toColor())),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.error_outline_outlined,
                      size: 10,
                      color: 'C01414'.toColor(),
                    ),
                  ),
                  SizedBox(width: 9),
                  Container(
                    width: MediaQuery.of(context).size.width - 59,
                    child: Wrap(
                      children: [
                        Container(
                          child: Text(
                            'warning3',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                        Container(
                          child: Text(
                            'syaratketentuan',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: 'C01414'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: Image.asset('assets/breakfast.png'),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'sarapan',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: '323232'.toColor()),
                          ).tr(),
                        ),
                        // SizedBox(height: 3),
                        Container(
                          width: MediaQuery.of(context).size.width - 95,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        NumberFormat.currency(
                                                locale: 'id ',
                                                decimalDigits: 0)
                                            .format(breakfast),
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 7,
                                            color: '747474'.toColor()),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '/Guest/Night',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 7,
                                            color: '747474'.toColor()),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        NumberFormat.currency(
                                                locale: 'id ',
                                                decimalDigits: 0)
                                            .format(totalbreakfast),
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9,
                                            color: 'C01414'.toColor()),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      width: 8,
                                      height: 8,
                                      child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        activeColor: 'C01414'.toColor(),
                                        value: checkedValue,
                                        onChanged: (newValue) {
                                          setState(() {
                                            newValue = checkedValue;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: 3),
                        Container(
                          child: Text(
                            '1 Night, 2 Guest',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '747474'.toColor()),
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
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 81,
        padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 9,
                          height: 9,
                          child: Image.asset('assets/cuanbiru.png'),
                        ),
                        SizedBox(width: 6),
                        Container(
                          child: Text(
                            '1.174 Point',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '8F8D8D'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            NumberFormat.currency(
                                locale: 'id',
                                decimalDigits: 0)
                                .format(pay),
                            style: GoogleFonts.poppins()
                                .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: 'C01414'.toColor()),
                          ),
                        ),
                        SizedBox(width: 2),
                        Container(
                          child: Text(
                            'jam',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '8F8D8D'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 34,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: 'C01414'.toColor(),
                onPressed: () {
                  Get.to(payment_method());
                },
                child: Text('tombolbayarsekarang',
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
  }
}
