import 'dart:ffi';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/maskapaigaruda.dart';
import 'package:hotelpedia/tanggalpesawat.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import 'filterpesawat.dart';
import 'garuda.dart';
import 'lionair.dart';
import 'listgaruda.dart';
import 'listlionair.dart';
import 'maskapailionair.dart';

class daftarpenerbangan extends StatefulWidget {
  // final bool? isActiv;
  //
  // daftarpenerbangan(this.isActiv);

  @override
  State<daftarpenerbangan> createState() => _daftarpenerbanganState();
}

class _daftarpenerbanganState extends State<daftarpenerbangan> {
  DateTime data = DateTime.now();
  final String keberangkatan = 'Jakarta';
  final String tujuan = 'Surabaya';
  final String kota1 = 'JKT';
  final String kota2 = 'SUB';
  final String kelaspesawat = 'Ekonomi';
  final int jumlahorang = 1;

  int _selectedIndex = 0;
  PageController controller = PageController();
  int pageChanged = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });

    controller.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 56,
              child: SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // padding: EdgeInsets.only(left: 24, right: 24, top: 12),
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() {
                            pageChanged = index;
                          });
                          print(pageChanged);
                        },
                        children: [
                          filterpesawat(),
                          tanggalpesawat(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              selectedItemColor: 'C01414'.toColor(),
              onTap: _navigateBottomBar,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: 'Filter',
                  icon: Image.asset('assets/filter.png', scale: 1.5),
                  activeIcon: Image.asset('assets/filter.png',
                      color: 'C01414'.toColor(), scale: 1.5),
                ),
                BottomNavigationBarItem(
                  label: 'Tanggal',
                  icon: Image.asset('assets/kalender.png', scale: 1.5),
                  activeIcon: Image.asset('assets/kalender.png',
                      color: 'C01414'.toColor(), scale: 1.5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
