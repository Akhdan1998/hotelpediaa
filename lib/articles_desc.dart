import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supercharged/supercharged.dart';

class articles_desc extends StatefulWidget {
  const articles_desc({Key? key}) : super(key: key);

  @override
  State<articles_desc> createState() => _articles_descState();
}

class _articles_descState extends State<articles_desc> {
  final String nama = 'Yuvan Farid Aziz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          // physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 24, bottom: 25),
                    height: 133,
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
                            'judulartikeldetail',
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
                    padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                    child: Positioned(
                      child:
                            Container(
                                child: Image.asset('assets/artikeldetail.png'),
                            ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'artikel1',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ).tr(),
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                nama,
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: '919191'.toColor()),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              child: Image.asset('assets/titik.png'),
                            ),
                            SizedBox(width: 5),
                            Container(
                              child: Text(
                                '2 Weeks ago',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    color: '919191'.toColor()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                final image = await ImagePicker().pickImage(source: ImageSource.camera);
                                if (image == null) return;

                                await Share.shareFiles([image.path], text:'HotelPedia');
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 8, top: 6, bottom: 6, right: 8),
                                decoration: BoxDecoration(
                                  color: '84FF9F'.toColor(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.share,
                                          size: 10,
                                          color: '009922'.toColor(),
                                        ),
                                      ),
                                      SizedBox(width: 7),
                                      Container(
                                        child: Text(
                                          'bagi',
                                          style: GoogleFonts.montserrat().copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 8,
                                              color: '009922'.toColor()),
                                        ).tr(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 7.30),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 8, top: 6, bottom: 6, right: 8),
                              decoration: BoxDecoration(
                                color: 'FDFF8C'.toColor(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.turned_in,
                                        size: 10,
                                        color: 'D4B200'.toColor(),
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Container(
                                      child: Text(
                                        'simpan',
                                        style: GoogleFonts.montserrat().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 8,
                                            color: 'D4B200'.toColor()),
                                      ).tr(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 7.30),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 8, top: 6, bottom: 6, right: 8),
                              decoration: BoxDecoration(
                                color: 'FFADAD'.toColor(),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.visibility,
                                        size: 10,
                                        color: 'E97C7C'.toColor(),
                                      ),
                                    ),
                                    SizedBox(width: 7),
                                    Container(
                                      child: Text(
                                        '1.226',
                                        style: GoogleFonts.montserrat().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 8,
                                            color: 'E97C7C'.toColor()),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            Container(
                              child: Text(
                                '     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Text(
                                '     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              child: Text(
                                '     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Senectus id et euismod pharetra nunc, sit tincidunt ridiculus in. Hendrerit in mi arcu nunc tortor, tellus, eget lectus in. Duis arcu vulputate tortor sit cras posuere. Habitasse et volutpat vitae ultrices tempus urna. Aliquam fringilla scelerisque mauris erat eget leo turpis risus. Fringilla mauris tortor a massa.',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: '323232'.toColor()),
                              ),
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
    );
  }
}
