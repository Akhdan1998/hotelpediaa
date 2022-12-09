import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/signup_model.dart';
import 'package:hotelpedia/signin.dart';
import 'package:hotelpedia/signup_services.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

Future<DaftarResponseModel?> daftar(String fullname, String job,
    String datebirth, String email, String password) async {
  var response =
      await http.post(Uri.https("admin.yuvan.dev", "api/register"), body: {
    "fullname": fullname,
    "job": job,
    "datebirth": datebirth,
    "email": email,
    "password": password
  });
  var data = response.body;
  print(response.body);
  if (response.statusCode == 500) {
    String responseString = response.body;
    dataModelFromJson(responseString);
  } else
    return null;
}

class _signupState extends State<signup> {
  bool _obsecureText = true;
  final fullnameEditingController = TextEditingController();
  final jobEditingController = TextEditingController();
  final datebirthEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  String selectedId = '';
  late DataModel _dataModel;

  // late DataModel requestModel;

  // @override
  // void initState() {
  //   super.initState();
  //   requestModel = new DataModel();
  // }

  // GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
                      size: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 11),
              Container(
                child: Text(
                  'buat',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ).tr(),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 40, right: 40, bottom: 76),
          color: Colors.white,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 40),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'namalengkap',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: '818181'.toColor()),
                        ).tr(),
                      ),
                      // SizedBox(height: 5),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          // onSaved: (input) => requestModel.fullname = input,
                          controller: fullnameEditingController,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'pekerjaan',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: '818181'.toColor()),
                        ).tr(),
                      ),
                      // SizedBox(height: 5),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          // onSaved: (input) => requestModel.job = input,
                          controller: jobEditingController,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(top: 20),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'ttl',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: '818181'.toColor()),
                        ).tr(),
                      ),
                      // SizedBox(height: 5),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          //onSaved: (input) => requestModel.datebirth = input,
                          controller: datebirthEditingController,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(top: 10),
                            border: UnderlineInputBorder(),
                          ),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1945),
                                lastDate: DateTime(2500));

                            if (pickeddate != null) {
                              setState(() {
                                datebirthEditingController.text =
                                    DateFormat('yyyy-dd-MM').format(pickeddate);
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'email',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: '818181'.toColor()),
                        ).tr(),
                      ),
                      // SizedBox(height: 5),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          //onSaved: (input) => requestModel.email = input,
                          controller: emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.only(top: 10),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'password',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: '818181'.toColor()),
                        ).tr(),
                      ),
                      // SizedBox(height: 5),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          //onSaved: (input) => requestModel.password = input,
                          controller: passwordEditingController,
                          obscureText: _obsecureText,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obsecureText = !_obsecureText;
                                });
                              },
                              child: Icon(_obsecureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                            border: UnderlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 101),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 61 - 62,
                        height: 48,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: 'C01414'.toColor(),
                          onPressed: () async {
                            if (FirebaseAuth.instance.currentUser == null) {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                    email: emailEditingController.text,
                                    password: passwordEditingController.text);
                            }
                            users.add({
                              'fullname': fullnameEditingController.text,
                              'job': jobEditingController.text,
                              'datebirth': datebirthEditingController.text,
                              'email': emailEditingController.text,
                              'password': passwordEditingController.text,
                              'selectedId': selectedId,
                            });

                            await Services.daftar(
                              DataModel(
                                  fullname: fullnameEditingController.text,
                                  job: jobEditingController.text,
                                  datebirth: datebirthEditingController.text,
                                  email: emailEditingController.text,
                                  password: passwordEditingController.text),
                            );

                            Fluttertoast.showToast(
                                msg: "Berhasil Membuat Akun",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: 'C01414'.toColor(),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          },
                          child: Text(
                            'tombolbuat',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ).tr(),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'tanya2',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: '818181'.toColor()),
                            ).tr(),
                          ),
                          SizedBox(width: 2),
                          GestureDetector(
                            onTap: () {
                              Get.to(signin());
                            },
                            child: Container(
                              child: Text(
                                'tombolmasuk',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: 'C01414'.toColor()),
                              ).tr(),
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
    );
  }
  // void showNotification(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: 'C01414'.toColor(),
  //       content: Text(message.toString())));
  // }

// Future <void> signup() async {
//   if (fullnameEditingController.text.isNotEmpty &&
//       jobEditingController.text.isNotEmpty &&
//       datebirthEditingController.text.isNotEmpty &&
//       emailEditingController.text.isNotEmpty &&
//       passwordEditingController.text.isNotEmpty) {
//     var response = await http.post(Uri.parse("https://admin.yuvan.dev/api/register"),
//     body: {"fullname": fullnameEditingController.text,
//       "job": jobEditingController.text,
//       "datebirth": datebirthEditingController.text,
//       "email": emailEditingController.text,
//       "password": passwordEditingController,
//     }); if (response.statusCode == 200);
//   }
// }

// void registerUser() async {
//   var url = "https://admin.yuvan.dev/api/register";
//   var data = {
//     "fullname": fullnameEditingController.text,
//     "job": jobEditingController.text,
//     "datebirth": datebirthEditingController.text,
//     "email": emailEditingController.text,
//     "password": passwordEditingController,
//   };
//   var bodyy = json.encode(data);
//   var urlParse = Uri.parse(url);
//   Response response = (await http.post(urlParse,
//       body: bodyy,
//       headers: {"Content-Type": "application.json"})) as Response;
//   var dataa = jsonDecode(response.body);
//   print(dataa);
// }

// bool validateAndSave() {
//   final Container = globalFormKey.currentState;
//   if (Container!.validate()) {
//     Container.save();
//     return true;
//   }
//   return false;
// }

}
