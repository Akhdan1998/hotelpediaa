import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/wisatadetail.dart';
import 'package:supercharged/supercharged.dart';

class destinasiwisata2 extends StatelessWidget {
  const destinasiwisata2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int cuan = 125000;
    return Material(
      child: GestureDetector(
        onTap: () {
          Get.to(wisatadetail());
        },
        child: Container(
          width: 260,
          child: Column(
            children: [
              Container(
                width: 260,
                height: 155,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/fun.png'),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
              // SizedBox(height: 6),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(1, 1),
                      color: Colors.grey.shade300,
                    ),
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(-1, 1),
                      color: Colors.grey.shade300,
                    ),
                    BoxShadow(
                      blurRadius: 1,
                      offset: const Offset(1, 0),
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                padding:
                    EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Funworld Karawang',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: '323232'.toColor()),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 15,
                            alignment: Alignment.center,
                            child: Text(
                              'Bogor - 12 Km',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: '747474'.toColor()),
                            ),
                          ),
                          Container(
                            height: 15,
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 2),
                                Container(
                                  child: Icon(Icons.star_outlined,
                                      size: 10, color: 'FFCE31'.toColor()),
                                ),
                                SizedBox(width: 3),
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
                          ),
                          Container(
                            child: Text(
                              NumberFormat.currency(
                                      locale: 'id', decimalDigits: 0)
                                  .format(cuan),
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: 'C01414'.toColor()),
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
      ),
    );
  }
}
