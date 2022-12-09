import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/buttonmodels.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

import 'buttonwallet.dart';

// class LoginNotifier extends ChangeNotifier {
//   final TextEditingController emailController = TextEditingController();
//
//   String attachedProvider = "";
//
//   attachEmailProvider({required String provider}) {
//     emailController.text = emailController.text + provider;
//     attachedProvider = provider;
//     notifyListeners();
//   }
//
//   clearTextFieldState() {
//     emailController.clear();
//     attachedProvider = "";
//     notifyListeners();
//   }
// }

class wallet extends StatefulWidget {

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance;
  String selectedId = '';
  late final int cuan = 199000;
  List<Select> select = [
    Select(
      id: '1',
      nominal: 50000,
    ),
    Select(
      id: '2',
      nominal: 100000,
    ),
    Select(
      id: '3',
      nominal: 150000,
    ),
    Select(
      id: '4',
      nominal: 200000,
    ),
    Select(
      id: '5',
      nominal: 250000,
    ),
    Select(
      id: '6',
      nominal: 500000,
    ),
    Select(
      id: '7',
      nominal: 1000000,
    ),
    Select(
      id: '8',
      nominal: 2500000,
    ),
    Select(
      id: '9',
      nominal: 5000000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // LoginNotifier loginNotifier({required bool renderUI}) =>
    //     Provider.of<LoginNotifier>(context, listen: renderUI);
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
                  'tombolwallet',
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
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 215,
                      color: 'C01414'.toColor(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Card(
                            elevation: 10,
                            color: 'C01414'.toColor(),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 38,
                                    height: 22,
                                    child: Image.asset('assets/atm.png'),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Balance:',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: 'FFFFFF'.toColor()),
                                  ),
                                  Text(
                                    NumberFormat.currency(locale: 'id')
                                        .format(cuan),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: 'FFFFFF'.toColor()),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'poin',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 8,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: 'FFFFFF'
                                                            .toColor()),
                                              ).tr(),
                                            ),
                                            Text(
                                              '10 Poin',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: 'FFFFFF'
                                                          .toColor()),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'an',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 8,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: 'FFFFFF'
                                                            .toColor()),
                                              ).tr(),
                                            ),
                                            Container(
                                              child: Text(
                                                'Yuvan Farid',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: 'FFFFFF'
                                                            .toColor()),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Text(
                                                'idkartu',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 8,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: 'FFFFFF'
                                                            .toColor()),
                                              ).tr(),
                                            ),
                                            Container(
                                              child: Text(
                                                'ALDJ1283A',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: 'FFFFFF'
                                                            .toColor()),
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
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 29),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'topup',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ).tr(),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                left: 15, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              color: 'F4F4F4'.toColor(),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              select
                                  .first.nominal!
                                  .toString()
                                  ,
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: '585858'.toColor()),
                            ),
                            // child: Text(
                            //   NumberFormat.currency(locale: 'id').format(cuan),
                            //   style: GoogleFonts.poppins().copyWith(
                            //       fontWeight: FontWeight.bold,
                            //       fontSize: 14,
                            //       color: '585858'.toColor()),
                            // ),
                          ),
                          // Container(
                          //   child: AwesomeTextfield.filled(
                          //       textEditingController:
                          //       loginNotifier(renderUI: false).emailController,
                          //       fillColor: Colors.grey),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'nominal',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: '585858'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height - 250 - 250,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container(
                              //   width: 94,
                              //   height: 36,
                              //   padding: EdgeInsets.only(left: 15, right: 15, top: 9, bottom: 9),
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(6),
                              //     color: 'C01414'.toColor(),
                              //     border: Border.all(color: 'FFFFFF'.toColor()),
                              //   ),
                              //   child: Text(
                              //     NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan1),
                              //     style: GoogleFonts.poppins().copyWith(
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 12,
                              //         color: 'FFFFFF'.toColor()),
                              //   ),
                              // ),
                              button(
                                  select: select[0],
                                  isActiv: (selectedId == select[0].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              // Container(
                              //   height: 36,
                              //   width: 94,
                              //   padding: EdgeInsets.only(left: 13, right: 12, top: 9, bottom: 9),
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(6),
                              //     color: 'C01414'.toColor(),
                              //     border: Border.all(color: 'FFFFFF'.toColor()),
                              //   ),
                              //   child: Text(
                              //     NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan2),
                              //     style: GoogleFonts.poppins().copyWith(
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 12,
                              //         color: 'FFFFFF'.toColor()),
                              //   ),
                              // ),
                              button(
                                  select: select[1],
                                  isActiv: (selectedId == select[1].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              // Container(
                              //   height: 36,
                              //   width: 94,
                              //   padding: EdgeInsets.only(left: 13, right: 13, top: 9, bottom: 9),
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(6),
                              //     color: 'C01414'.toColor(),
                              //     border: Border.all(color: 'FFFFFF'.toColor()),
                              //   ),
                              //   child: Text(
                              //     NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan3),
                              //     style: GoogleFonts.poppins().copyWith(
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 12,
                              //         color: 'FFFFFF'.toColor()),
                              //   ),
                              // ),
                              button(
                                  select: select[2],
                                  isActiv: (selectedId == select[2].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 12, right: 11, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan4),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[3],
                                  isActiv: (selectedId == select[3].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 12, right: 10, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan5),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[4],
                                  isActiv: (selectedId == select[4].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 11, right: 11, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan6),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[5],
                                  isActiv: (selectedId == select[5].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 8, right: 7, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan7),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[6],
                                  isActiv: (selectedId == select[6].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 6, right: 5, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan8),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[7],
                                  isActiv: (selectedId == select[7].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                              //     Container(
                              //       height: 36,
                              //       width: 94,
                              //       padding: EdgeInsets.only(left: 6, right: 6, top: 9, bottom: 9),
                              //       decoration: BoxDecoration(
                              //         borderRadius: BorderRadius.circular(6),
                              //         color: 'C01414'.toColor(),
                              //         border: Border.all(color: 'FFFFFF'.toColor()),
                              //       ),
                              //       child: Text(
                              //         NumberFormat.currency(locale: 'id', decimalDigits: 0).format(cuan9),
                              //         style: GoogleFonts.poppins().copyWith(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 12,
                              //             color: 'FFFFFF'.toColor()),
                              //       ),
                              //     ),
                              button(
                                  select: select[8],
                                  isActiv: (selectedId == select[8].id)
                                      ? true
                                      : false,
                                  onSelected: (value) {
                                    setState(() {
                                      selectedId = value;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 54,
        padding: EdgeInsets.fromLTRB(13, 8, 13, 8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 34,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: 'C01414'.toColor(),
            onPressed: () {},
            child: Text(
              'tomboltopupwallet',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ).tr(),
          ),
        ),
      ),
    );
  }
}
