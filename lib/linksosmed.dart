import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';

class linksosmed extends StatefulWidget {
  const linksosmed({Key? key}) : super(key: key);

  @override
  State<linksosmed> createState() => _linksosmedState();
}

class _linksosmedState extends State<linksosmed> {
  final Uri _url = Uri.parse('https://www.instagram.com/akhddan/?hl=id');
  final Uri _url1 = Uri.parse('https://twitter.com/Akhdan24');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24, bottom: 25),
                    height: 134,
                    width: MediaQuery.of(context).size.width,
                    color: 'C01414'.toColor(),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            child: Icon(
                              Icons.arrow_back_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 11),
                        Container(
                          child: Text(
                            'judulhubungkankesosmed',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 21, right: 21, top: 80),
                child: Positioned(
                  child: Container(
                    height: 123,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              if (!await launchUrl(_url)) {
                                throw 'Could not launch $_url';
                              }
                            },
                            child: Container(
                              // height: 35,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 10),
                              decoration: BoxDecoration(
                                color: 'F5F5F5'.toColor(),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 15,
                                    child: Image.asset('assets/instagram.png'),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: MediaQuery.of(context).size.width - 112,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'hubungkankeinstagram',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: '626161'.toColor()),
                                          ).tr(),
                                        ),
                                        Container(
                                          child: Text(
                                            'statushubungan',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 5,
                                                    color: 'C01414'.toColor()),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (!await launchUrl(_url1)) {
                                throw 'Could not launch $_url1';
                              }
                            },
                            child: Container(
                              // height: 35,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 10),
                              decoration: BoxDecoration(
                                color: 'F5F5F5'.toColor(),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 15,
                                    child: Image.asset('assets/twitter.png'),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: MediaQuery.of(context).size.width - 112,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                            'hubungkanketwitter',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10,
                                                    color: '626161'.toColor()),
                                          ).tr(),
                                        ),
                                        Container(
                                          child: Text(
                                            'statushubungan',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 5,
                                                    color: 'C01414'.toColor()),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
