import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotelpedia/pilihkamar.dart';
import 'package:hotelpedia/tiket_list_wisata.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class wisatadetail extends StatefulWidget {
  const wisatadetail({Key? key}) : super(key: key);

  @override
  State<wisatadetail> createState() => _wisatadetailState();
}

class _wisatadetailState extends State<wisatadetail> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  bool show = false;
  final int cuan = 125000;

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
                      width: MediaQuery.of(context).size.width,
                      height: 133,
                      color: 'C01414'.toColor(),
                      padding: EdgeInsets.only(left: 20, bottom: 35, top: 10, right: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back,
                                size: 20, color: Colors.white),
                          ),
                          SizedBox(width: 11),
                          Text(
                            'Taman Safari Bogor',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 159,
                      padding:
                          EdgeInsets.only(left: 20, right: 20, bottom: 12),
                    ),
                  ],
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  // width: 318,
                  width: MediaQuery.of(context).size.width - 40,
                  height: 212,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover, alignment: Alignment.bottomCenter,
                        image: AssetImage('assets/zoo.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Taman Safari Bogor',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bogor',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: 9,
                              color: '323232'.toColor()),
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 3),
                            Container(
                              child: Icon(Icons.star_outlined,
                                  size: 10, color: 'FFCE31'.toColor()),
                            ),
                            SizedBox(width: 4),
                            Container(
                              child: Text(
                                '4.0',
                                style: GoogleFonts.montserrat().copyWith(
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
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 105,
                    height: 70,
                    child: Image.asset('assets/safari1.png'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 104,
                    height: 70,
                    child: Image.asset('assets/safari2.png'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 105,
                    height: 70,
                    child: Image.asset('assets/safari3.png'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 135,
                    height: 70,
                    child: Image.asset('assets/safari4.png'),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              thickness: 1,
              endIndent: 20,
              indent: 20,
            ),
            // SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'deskripsi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 6),
                  (show == true)
                      ? Container(
                          // height: 96,
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'isideskripsi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ],
                          ),
                        )
                      : SizedBox(),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    // height: 40,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        child: (show == true)
                            ? Text(
                                'tutupdeskripsi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ).tr()
                            : Text(
                                'lihatdeskripsi',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: 'C01414'.toColor()),
                              ).tr()),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 235,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'lokasi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 146,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: GoogleMap(
                      mapType: MapType.hybrid,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'harga1',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: '8F8D8D'.toColor()),
                        ).tr(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        NumberFormat.currency(
                                locale: 'id', decimalDigits: 0)
                            .format(cuan),
                        style: GoogleFonts.poppins().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: 'C01414'.toColor()),
                      ),
                      SizedBox(width: 2),
                      Container(
                        child: Text(
                          '1',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: '8F8D8D'.toColor()),
                        ).tr(),
                      ),
                    ],
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
                  Get.to(tiket_list_wisata());
                },
                child: Text(
                  'tombolpesan',
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
