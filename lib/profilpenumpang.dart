import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/profilpenumpangdetail.dart';
import 'package:supercharged/supercharged.dart';

class profilpenumpang extends StatelessWidget {
  const profilpenumpang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cariprofilEditingController = TextEditingController();
    final profil1EditingController = TextEditingController();
    final profil2EditingController = TextEditingController();
    final profil3EditingController = TextEditingController();
    final profil4EditingController = TextEditingController();
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
                  'judulprofilpemesan',
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
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: 'C01414'.toColor(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 15),
                    height: 35,
                    child: TextFormField(
                      controller: cariprofilEditingController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10, bottom: 18),
                        hintText: 'Cari Profil Pemesanan',
                        hintStyle: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: '323232'.toColor()),
                        fillColor: 'F5F5F5'.toColor(),
                        filled: true,
                        suffixIcon: Icon(Icons.search_outlined,
                            color: 'C01414'.toColor(), size: 17),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
              ),
              Container(
                height: 385,
                padding: EdgeInsets.only(left: 20, top: 12, right: 20, bottom: 13),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'judulprofilpemesan',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: '323232'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: profil1EditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, top: 1),
                          suffixIcon: Container(
                            width: 56,
                            child: Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(
                                        Icons.more_vert_outlined, color: 'C01414'.toColor(), size: 17),
                                  ),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    child: Image.asset('assets/add.png'),
                                  ),
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                          fillColor: 'F5F5F5'.toColor(),
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: profil2EditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, top: 1),
                          suffixIcon: Container(
                            width: 56,
                            child: Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(
                                        Icons.more_vert_outlined, color: 'C01414'.toColor(), size: 17),
                                  ),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    child: Image.asset('assets/add.png'),
                                  ),
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                          fillColor: 'F5F5F5'.toColor(),
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: profil3EditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, top: 1),
                          suffixIcon: Container(
                            width: 56,
                            child: Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(
                                        Icons.more_vert_outlined, color: 'C01414'.toColor(), size: 17),
                                  ),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    child: Image.asset('assets/add.png'),
                                  ),
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                          fillColor: 'F5F5F5'.toColor(),
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 35,
                      child: TextFormField(
                        controller: profil4EditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, top: 1),
                          suffixIcon: Container(
                            width: 56,
                            child: Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(
                                        Icons.more_vert_outlined, color: 'C01414'.toColor(), size: 17),
                                  ),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    child: Image.asset('assets/add.png'),
                                  ),
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                          ),
                          fillColor: 'F5F5F5'.toColor(),
                          filled: true,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
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
                onPressed: () {
                  Get.to(profilpenumpangdetail());
                },
                child: Text('tomboltambahprofilpemesanan',
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
