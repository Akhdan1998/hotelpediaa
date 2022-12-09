import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotelpedia/pengaturan.dart';
import 'package:hotelpedia/profilpenumpang.dart';
import 'package:hotelpedia/signin.dart';
import 'package:hotelpedia/wallet.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercharged/supercharged.dart';

import 'getdata_API_Auth_Model.dart';
import 'package:http/http.dart' as http;
import 'editprofile.dart';
import 'kupon.dart';
import 'linksosmed.dart';

late String finalEmail;

class profile extends StatefulWidget {
  profile(this.token, {super.key});

  String token;

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Future<DataUser> getDataUser() async {
    // final SharedPreferences sharedPreferences =
    //     await SharedPreferences.getInstance();
    // var obtainedEmail = sharedPreferences.getString('email');
    // setState(() {
    //   finalEmail = obtainedEmail!;
    // });
    // print(finalEmail);
    try {
      Uri url = Uri.parse("https://admin.yuvan.dev/api/user");
      var res = await http.get(
        url,
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${widget.token}",
        },
      );

      //bearer widget token

      //bearer iewihikj347947590843

      Map<String, dynamic> body = jsonDecode(res.body);

      if (res.statusCode == 200) {
        return DataUser.fromJson(body["data"]);
      } else {
        throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
      }
    } catch (e) {
      throw e.toString();
    }
  }

  // getDataUser() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   var url = Uri.parse("https://admin.yuvan.dev/api/user");
  //   // var response = await http.get(url);
  //   var response = await http.get(
  //     url,
  //     headers: {
  //       "Accept": "application/json",
  //       "Authorization": "Bearer ${widget.token}",
  //     },
  //   );
  //   Map<String, dynamic> body = jsonDecode(response.body);
  //   if (response.statusCode == 200) {
  //     var items = json.decode(response.body)['data'];
  //     setState(() {
  //       users = items;
  //       isLoading = false;
  //     });
  //   } else {
  //     setState(() {
  //       users = [];
  //       isLoading = false;
  //     });
  //   }
  // }

  // late Future<DataGetModel> futuredata;
  // @override
  // void initState() {
  //   super.initState();
  //   futuredata = getData();
  // }
  int cuan = 10500000;
  final currentUser = FirebaseAuth.instance;

  // List<DataGetModel> listDataGetModel = [];
  //  GetDataServices getdataServices = GetDataServices();
  // getData() async {
  //   listDataGetModel = getdataServices.getData();
  //   setState((){});
  // }
  // // GetDataServices servicesAPI = GetDataServices();
  // // late Future<List<DataGetModel>> listData;
  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: FutureBuilder<DataUser>(
        future: getDataUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }

          DataUser data = snapshot.data!;

          return Container(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 200, left: 20, right: 20, bottom: 12),
                            alignment: Alignment.topCenter,
                            color: Colors.white,
                            // height: MediaQuery.of(context).size.height - 380,
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              // height: 45,
                              decoration: BoxDecoration(
                                color: 'F5F5F5'.toColor(),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 5, top: 5, right: 5, bottom: 5),
                                child: Wrap(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // alignment: Alignment.centerLeft,
                                      width: 12,
                                      child: Image.asset('assets/notice.png'),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      child: Wrap(
                                        children: [
                                          Container(
                                            child: Text(
                                              'warningprofil1',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          '626161'.toColor()),
                                            ).tr(),
                                          ),
                                          SizedBox(width: 2),
                                          Container(
                                            child: Text(
                                              'warningprofil2',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          '626161'.toColor()),
                                            ).tr(),
                                          ),
                                          SizedBox(width: 2),
                                          Container(
                                            child: Text(
                                              'warningprofil3',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          '626161'.toColor()),
                                            ).tr(),
                                          ),
                                          SizedBox(width: 2),
                                          Container(
                                            child: Text(
                                              'warningprofil4',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          '626161'.toColor()),
                                            ).tr(),
                                          ),
                                          SizedBox(width: 2),
                                          Container(
                                            // width: 80,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'klik',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            'C01414'.toColor()),
                                              ).tr(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(left: 21, right: 21, top: 43),
                        color: 'C01414'.toColor(),
                        height: 134,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'judulprofile',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ).tr(),
                            ),
                            Container(
                              width: 20,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(pengaturan());
                                },
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 21, right: 21, top: 88),
                        child: Positioned(
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            width: MediaQuery.of(context).size.width,
                            // height: 92,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          NetworkImage(data.profilePhotoUrl!),
                                    ),
                                    // Container(
                                    //     width: 70,
                                    //     child:
                                    //         Image.asset('assets/fotoin.png')),
                                    SizedBox(width: 6),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.name ?? '-',
                                          // user.displayName!,
                                          style: GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          // user.email!,
                                          data.email ?? '-',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12,
                                              color: '323232'.toColor()),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              143,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 13,
                                                    child: Image.asset(
                                                        'assets/cuan.png'),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '1.174',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            fontSize: 10,
                                                            color: '626161'
                                                                .toColor()),
                                                  ),
                                                ],
                                              ),
                                              // SizedBox(width: 69),
                                              Row(
                                                children: [
                                                  Text(
                                                    '10',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 10,
                                                            color: 'C01414'
                                                                .toColor()),
                                                  ),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Poin',
                                                    style: GoogleFonts.poppins()
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 10,
                                                            color: 'C01414'
                                                                .toColor()),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 13,
                                              height: 9,
                                              child: Image.asset(
                                                  'assets/kupon.png'),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              '10 Kupon',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      fontSize: 10,
                                                      color:
                                                          '626161'.toColor()),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  child: Image.asset(
                                    'assets/add.png',
                                    scale: 1.6,
                                  ),
                                  onTap: () {
                                    Get.to(editprofile(
                                      fullname: data.name,
                                      email: data.email,
                                      token: '',
                                    ));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 5,
                  thickness: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 340,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    clipBehavior: Clip.hardEdge,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Get.to(const linksosmed());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/share.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolsosialmedia',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    child: Text(
                                      'deskripsisosialmedia',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(wallet());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/wallet.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolwallet',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    child: Text(
                                      'deskripsiwallet',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(kupon());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/kuponkuning.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolkupon',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    child: Text(
                                      'deskripsikupon',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(profilpenumpang());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/propil.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolprofilpemesanan',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 66,
                                    // width: 294,
                                    child: Text(
                                      'deskripsiprofilpemesanan',
                                      maxLines: 2,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/email.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolemailpassword',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 66,
                                    child: Text(
                                      'deskripsiemailpasswrod',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/cs.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'tombolcs',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ).tr(),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 66,
                                    child: Text(
                                      'deskripsics',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 16,
                                child: Image.asset('assets/faq.png'),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'F.A.Q',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Container(
                                    width: 294,
                                    child: Text(
                                      'deskripsifaq',
                                      maxLines: 2,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '6F6F6F'.toColor()),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            GoogleSignIn().disconnect();
                            FirebaseAuth.instance.signOut();
                            Get.offAll(signin());
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // width: 16,
                                child: Icon(
                                  Icons.logout_outlined,
                                  color: 'C01414'.toColor(),
                                  size: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                child: Text(
                                  'tombolkeluar',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ).tr(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
// editUser(item) {
//   var token = item['token'].toString();
//   var job = item['job'].toString();
//   var email = item['email'].toString();
//   var password = item['password'].toString();
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => editprofile(
//         token: token,
//         job: job,
//         email: email,
//         password: password,
//       ),
//     ),
//   );
// }
}
