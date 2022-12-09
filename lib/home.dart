import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/ticket_detail_train.dart';
import 'package:hotelpedia/verticalhotel1.dart';
import 'package:hotelpedia/verticalhotel2.dart';
import 'package:hotelpedia/verticalhotel3.dart';
import 'package:hotelpedia/wisata_list.dart';
import 'package:supercharged/supercharged.dart';

import 'artikel1.dart';
import 'artikel2.dart';
import 'artikel3.dart';
import 'artikel4.dart';
import 'carihotel.dart';
import 'destinasihotel1.dart';
import 'destinasihotel2.dart';
import 'destinasiwisata1.dart';
import 'destinasiwisata2.dart';
import 'feed_screen.dart';
import 'ticket_detail_plane.dart';
import 'listvideo.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final pencarianEditingController = TextEditingController();
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: 'C01414'.toColor(),
        elevation: 0,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.density_medium,
                  size: 25,
                  color: 'FFFFFF'.toColor(),
                ),
                // Container(
                //   child:
                // ),
              ),
              Container(
                width: 118,
                height: 20.8,
                child: Image.asset('assets/hotelpedia.png'),
              ),
              GestureDetector(
                onTap: () {},
                child: Badge(
                  // shape: BadgeShape.square,
                  badgeContent: Text(
                    '9',
                    style: GoogleFonts.montserrat().copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                        color: Colors.white),
                  ),
                  child: Icon(
                    Icons.notifications,
                    size: 25,
                    color: 'FFFFFF'.toColor(),
                  ),
                  badgeColor: '79DD2A'.toColor(),
                  toAnimate: false,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            color: 'C01414'.toColor(),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                controller: pencarianEditingController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                  hintText: 'Find your hotel',
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
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 227,
            child: SingleChildScrollView(
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
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18),
                              topLeft: Radius.circular(18))),
                    ),
                  ),
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                      onPageChanged: (index, carouselReason) {
                        print(index);
                        setState(() {
                          _current = index;
                        });
                      },
                      height: 130,
                      viewportFraction: 1,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 10),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                    items: [1, 2, 3, 4].map(
                      (i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              color: Colors.white,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width -
                                        40,
                                    child: Image.asset('assets/carousel.png'),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ).toList(),
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3, 4].asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 6,
                              height: 6,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    // height: 92,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'daerah',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                            Icons.my_location_outlined,
                                            size: 20,
                                            color: 'C01414'.toColor()),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Near Me',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset('assets/jakarta.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Jakarta',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset('assets/korea.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Korea',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child: Image.asset('assets/arab.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Arab',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset('assets/jepang.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Japan',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset('assets/dubai.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Dubai',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        width: 40,
                                        height: 40,
                                        child:
                                            Image.asset('assets/rusia.png'),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Rusia',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    // height: 92,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'services',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(carihotel());
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            'assets/hotelhome.png',
                                            scale: 2),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'Hotel',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  color:
                                                      '4D4B4B'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(ticket_detail_plane());
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            'assets/flight.png',
                                            scale: 2),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'pesawat',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  color:
                                                      '4D4B4B'.toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(ticket_detail_train());
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            'assets/keretahome.png',
                                            scale: 2),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'keretaapi',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  color:
                                                      '4D4B4B'.toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(wisata_list());
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: 'FFFFFF'.toColor(),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(-1, 1),
                                              color: Colors.grey.shade300,
                                            ),
                                            BoxShadow(
                                              blurRadius: 3,
                                              offset: const Offset(1, 0),
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        width: 44,
                                        height: 44,
                                        child: Image.asset(
                                            'assets/wisata.png',
                                            scale: 2),
                                      ),
                                      SizedBox(height: 9),
                                      Container(
                                        child: Text(
                                          'wisata',
                                          style: GoogleFonts.montserrat()
                                              .copyWith(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w300,
                                                  color:
                                                      '4D4B4B'.toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(feed_screen());
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: 'FFFFFF'.toColor(),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(1, 1),
                                                color: Colors.grey.shade300,
                                              ),
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(-1, 1),
                                                color: Colors.grey.shade300,
                                              ),
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(1, 0),
                                                color: Colors.grey.shade300,
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          width: 44,
                                          height: 44,
                                          child: Image.asset(
                                              'assets/artikelhome.png',
                                              scale: 2),
                                        ),
                                        SizedBox(height: 9),
                                        Container(
                                          child: Text(
                                            'judulartikel',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w300,
                                                    color:
                                                        '4D4B4B'.toColor()),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(listvideo());
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: 'FFFFFF'.toColor(),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(1, 1),
                                                color: Colors.grey.shade300,
                                              ),
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(-1, 1),
                                                color: Colors.grey.shade300,
                                              ),
                                              BoxShadow(
                                                blurRadius: 3,
                                                offset: const Offset(1, 0),
                                                color: Colors.grey.shade300,
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          width: 44,
                                          height: 44,
                                          child: Image.asset(
                                              'assets/video.png',
                                              scale: 2),
                                        ),
                                        SizedBox(height: 9),
                                        Container(
                                          child: Text(
                                            'video',
                                            style: GoogleFonts.montserrat()
                                                .copyWith(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w300,
                                                    color:
                                                        '4D4B4B'.toColor()),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    // padding: EdgeInsets.all(5),
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'rekomendasi',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                verticalhotel1(),
                                SizedBox(width: 15),
                                verticalhotel2(),
                                SizedBox(width: 15),
                                verticalhotel3(),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'destinasihotel',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                destinasihotel1(),
                                SizedBox(width: 15),
                                destinasihotel2(),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'hotartikel',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                SizedBox(width: 20),
                                artikel1(),
                                SizedBox(width: 15),
                                artikel2(),
                                SizedBox(width: 15),
                                artikel3(),
                                SizedBox(width: 15),
                                artikel4(),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'destinasiwisata',
                            style: GoogleFonts.montserrat().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: '4D4B4B'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            clipBehavior: Clip.hardEdge,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                destinasiwisata1(),
                                SizedBox(width: 15),
                                destinasiwisata2(),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
