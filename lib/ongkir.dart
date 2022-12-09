import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class ongkir extends StatefulWidget {
  const ongkir({Key? key}) : super(key: key);

  @override
  State<ongkir> createState() => _ongkirState();
}

class _ongkirState extends State<ongkir> {
  DateTime data = DateTime.now();
  String kodeongkir = "TIX2403";
  String paste = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        // height: 84,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              height: 83,
              child: Image.asset('assets/ongkit.png'),
            ),
            Container(
              padding: EdgeInsets.only(left: 13, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 51 - 52 - 46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Voucher Gratis Ongkir',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.black),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            Fluttertoast.showToast(
                                msg: "Kode Ongkir Berhasil Disalin",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: 'C01414'.toColor(),
                                textColor: Colors.white,
                                fontSize: 16);
                            await FlutterClipboard.copy(kodeongkir);
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'tombolsalin',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: '6C6C6C'.toColor()),
                                  ).tr(),
                                ),
                                SizedBox(width: 3),
                                Container(
                                  child: Icon(
                                    Icons.content_copy,
                                    size: 10,
                                    color: '5C5C5C'.toColor(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'sd',
                          style: GoogleFonts.montserrat().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w300,
                              color: '6C6C6C'.toColor()),
                        ).tr(),
                      ),
                      SizedBox(width: 3),
                      Container(
                        child: Text(DateFormat.yMd().format(data),
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '6C6C6C'.toColor())),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding:
                    EdgeInsets.only(left: 5, top: 4, right: 5, bottom: 4),
                    // height: 17,
                    // width: 97,
                    decoration: BoxDecoration(
                      color: 'FCDDDD'.toColor(),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'kode',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: 'C01414'.toColor()),
                          ).tr(),
                        ),
                        SizedBox(width: 1),
                        Container(
                          child: Text(
                              kodeongkir,
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
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
    );
  }
}
