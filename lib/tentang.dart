import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class tentang extends StatelessWidget {
  const tentang({Key? key}) : super(key: key);

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
                  'tentang',
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
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: 'C01414'.toColor(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(18),
                      topLeft: Radius.circular(18)),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 15,
                    children: [
                      Container(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut vitae mattis consectetur. Venenatis at maecenas augue tempus, urna, est natoque in. Risus egestas pretium, enim varius rhoncus mus accumsan bibendum.',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w200,
                              color: '4A4A4A'.toColor()),
                        ),
                      ),
                      Container(
                        child: Text(
                          'In vulputate facilisis turpis consequat pellentesque suspendisse tincidunt vel. Nisl nibh sed urna, egestas cras ullamcorper at dui sit. Mi nunc odio ultrices egestas ac. In ultricies phasellus vel neque consequat, ut vitae. Urna eu, adipiscing egestas laoreet ac fermentum. Volutpat accumsan cursus sed ipsum. Sagittis luctus diam tincidunt imperdiet dui tincidunt. Id non laoreet tempus eu.',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w200,
                              color: '4A4A4A'.toColor()),
                        ),
                      ),
                      Container(
                        child: Text(
                          'At facilisis est accumsan adipiscing elit. Morbi velit, pellentesque varius amet tellus elit nec massa. Habitant mauris, nisi bibendum fermentum lectus sapien, quis velit. Ut amet cras ut consectetur amet, vestibulum blandit dictum. ',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w200,
                              color: '4A4A4A'.toColor()),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Aenean auctor ultricies feugiat faucibus pulvinar vel consectetur. Sagittis, scelerisque id at amet, eget. Nibh nulla a est dui pellentesque lectus leo justo. Risus facilisi id lectus at euismod proin. Non pretium ornare hac sit. Nullam semper suspendisse fames in donec leo turpis sed eu. Orci adipiscing in amet tellus proin pellentesque. Lobortis lectus consequat tempus vel ipsum ultrices sed tortor. Elementum eget sagi.',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 11,
                              fontWeight: FontWeight.w200,
                              color: '4A4A4A'.toColor()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
