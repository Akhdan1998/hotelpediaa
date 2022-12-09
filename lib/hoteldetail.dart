import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotelpedia/pilihkamar.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class hoteldetail extends StatefulWidget {
  const hoteldetail({Key? key}) : super(key: key);

  @override
  State<hoteldetail> createState() => _hoteldetailState();
}

class _hoteldetailState extends State<hoteldetail> {
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
  final int cuan = 237000;

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
                      padding: EdgeInsets.only(left: 20, bottom: 30, right: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              child: Icon(Icons.arrow_back,
                                  size: 20, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 11),
                          Text(
                            'Marcopolo Hotel Resort and Spa',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
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
                  width: MediaQuery.of(context).size.width - 40,
                  height: 212,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/background.png'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 185,
                          left: 270,
                          child: Container(
                            // width: 35,
                            // height: 17,
                            padding: EdgeInsets.only(
                                left: 9, top: 3, right: 9, bottom: 3),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '1/12',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
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
                      'Marcopolo Hotel Resort and Spa',
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
                          'Menteng, Jakarta',
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
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 46,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding:
                    EdgeInsets.only(left: 11, right: 11, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.free_cancellation_outlined,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'jadwal',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant_outlined,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'restoran',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.wifi_outlined,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'wifi',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.spa,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'spa',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.local_parking,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'parkir',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.pool,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'renang',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_vert,
                            size: 16,
                            color: '626161'.toColor(),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'lainnya',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 7,
                                color: '626161'.toColor()),
                          ).tr(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 136,
              padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'akomodasi',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 41,
                    decoration: BoxDecoration(
                      color: 'F5F5F5'.toColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.only(
                        left: 13, right: 13, top: 8, bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'chekin',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Text(
                              '14:00-23:00',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                  color: '323232'.toColor()),
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
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Text(
                              '12:00',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                  color: '323232'.toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          size: 10,
                          color: 'C01414'.toColor(),
                        ),
                        SizedBox(width: 9),
                        Container(
                          width: MediaQuery.of(context).size.width - 59,
                          // height: 30,
                          child: Text(
                            'warning2',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '626161'.toColor()),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
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
              // height: 235,
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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () async {
      //     final GoogleMapController controller = await _controller.future;
      //     controller.animateCamera(
      //       CameraUpdate.newLatLng(
      //         LatLng(-6.200000, 106.816666),
      //       ),
      //     );
      //   },
      //   label: Text('To the Lake!'),
      // ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 81,
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
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
                          'jam',
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
                  Get.to(pilihkamar());
                },
                child: Text(
                  'tombollihatkamar',
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
