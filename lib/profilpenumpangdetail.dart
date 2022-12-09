import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class profilpenumpangdetail extends StatefulWidget {
  const profilpenumpangdetail({Key? key}) : super(key: key);

  @override
  State<profilpenumpangdetail> createState() => _profilpenumpangdetailState();
}

class _profilpenumpangdetailState extends State<profilpenumpangdetail> {
  final titleEditingController = TextEditingController();
  final ktpEditingController = TextEditingController();
  final namadepanEditingController = TextEditingController();
  final namabelakangEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final ttlEditingController = TextEditingController();
  final teleponEditingController = TextEditingController();
  String selectedId = '';
  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
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
                  'judulprofilpenumpang',
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
      body: Container(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          // physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: 'C01414'.toColor(),
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 18, right: 20, bottom: 18),
                  width: MediaQuery.of(context).size.width,
                  // height: 102,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset('assets/icon.png', scale: 1.5),
                      ),
                      SizedBox(width: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mr. Paijo',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 9,
                                        color: '323232'.toColor()),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      '(default)',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '626161'.toColor()),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'ktp',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '5C5C5C'.toColor()),
                                    ).tr(),
                                  ),
                                  SizedBox(width: 24),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ':',
                                        style: GoogleFonts.poppins()
                                            .copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 9,
                                            color: '5C5C5C'.toColor()),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        width: MediaQuery.of(context).size.width - 105,
                                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '3500288239190203',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 9,
                                                  color: '5C5C5C'.toColor()),
                                            ),
                                            // SizedBox(width: 30),
                                            Container(
                                              // width: MediaQuery.of(context).size.width - 216,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'kategori',
                                                      style: GoogleFonts.poppins()
                                                          .copyWith(
                                                          fontWeight: FontWeight.w300,
                                                          fontSize: 9,
                                                          color: '5C5C5C'.toColor()),
                                                    ).tr(),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Text(
                                                    ':',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 9,
                                                        color: '5C5C5C'.toColor()),
                                                  ),
                                                  // SizedBox(width: 3),
                                                  Container(
                                                    // width: 42,
                                                    child: Text(
                                                      'usia',
                                                      style: GoogleFonts.poppins()
                                                          .copyWith(
                                                          fontWeight: FontWeight.w300,
                                                          fontSize: 9,
                                                          color: '5C5C5C'.toColor()),
                                                    ).tr(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'nomorponsel',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '5C5C5C'.toColor()),
                                    ).tr(),
                                  ),
                                  SizedBox(width: 2),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          ':',
                                          style: GoogleFonts.poppins()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                              color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        width: MediaQuery.of(context).size.width - 121,
                                        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '081239849076',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 9,
                                                  color: '5C5C5C'.toColor()),
                                            ),
                                            // SizedBox(width: 30),
                                            Container(
                                              // width: MediaQuery.of(context).size.width - 204,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'kewarganegaraan',
                                                      style: GoogleFonts.poppins()
                                                          .copyWith(
                                                          fontWeight: FontWeight.w300,
                                                          fontSize: 9,
                                                          color: '5C5C5C'.toColor()),
                                                    ).tr(),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Text(
                                                    ':',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 9,
                                                        color: '5C5C5C'.toColor()),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Indonesia',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 9,
                                                        color: '5C5C5C'.toColor()),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'ttl',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9,
                                          color: '5C5C5C'.toColor()),
                                    ).tr(),
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          ':',
                                          style: GoogleFonts.poppins()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                              color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                      SizedBox(width: 3),
                                      Container(
                                        width: 75,
                                        child: Text(
                                          '24 Mar 1998',
                                          style: GoogleFonts.poppins()
                                              .copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                              color: '5C5C5C'.toColor()),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // height: 342,
                    padding: EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 13),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: titleEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 48,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/title.png'),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('titel',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),
                                      ).tr(),
                                    ),
                                  ],
                                ),
                              ),
                              prefixText: 'Mr/Mrs. ',
                              prefixStyle: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11,
                                  color: '4E4E4E'.toColor()),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: ktpEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 85,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/ktp.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Nomor KTP',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: namadepanEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 99,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/nama.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Nama Depan',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: namabelakangEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 114,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/nama.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Nama Belakang',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: emailEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 99,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/alamatemaill.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Alamat Email',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: ttlEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 100,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/ttl.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Tanggal Lahir',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                            onTap: () async {
                              DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1945),
                                  lastDate: DateTime(2500));

                              if (pickeddate != null) {
                                setState(() {
                                  ttlEditingController.text =
                                      DateFormat('yyyy-dd-MM').format(pickeddate);
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 35,
                          child: TextFormField(
                            controller: teleponEditingController,
                            decoration: InputDecoration(
                              label: Container(
                                // width: 101,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      child: Image.asset('assets/telfon.png', color: 'C01414'.toColor()),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Text('Nomor Ponsel',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: 'C01414'.toColor()),),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(left: 10, top: 1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: 'C01414'.toColor(), width: 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 61,
        padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 34,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            color: 'C01414'.toColor(),
            onPressed: () async {
              users.add({
                'title': titleEditingController.text,
                'ktp': ktpEditingController.text,
                'namadepan': namadepanEditingController.text,
                'namabelakang': namabelakangEditingController.text,
                'email': emailEditingController.text,
                'ttl': ttlEditingController.text,
                'telepon': teleponEditingController.text,
                'selectedId': selectedId,
              });
              Fluttertoast.showToast(
                  msg: "Berhasil Menambah Profil Pemesan",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: 'C01414'.toColor(),
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },
            child: Text('tombolsimpanprofilemesan',
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


