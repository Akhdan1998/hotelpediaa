import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotelpedia/signup.dart';
import 'package:hotelpedia/signup_model.dart';
import 'package:hotelpedia/signup_services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercharged/supercharged.dart';
import 'package:hotelpedia/signin_model.dart';

import 'navigation.dart';

class signin extends StatefulWidget {
  @override
  State<signin> createState() => _signinState();
}

// Future<LoginResponse?> masuk(String email, String password) async {
//   var response = await http.post(Uri.https("admin.yuvan.dev", "api/login"),
//       body: {"email": email, "password": password});
//   var data = response.body;
//   print(response.body);
//   if (response.statusCode == 200) {
//     String responseString = response.body;
//     loginModelFromJson(responseString);
//   } else
//     return null;
// }

class _signinState extends State<signin> {
  bool isLoading = false;

  bool isChecked = true;
  bool _obsecureText = true;
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  // late LoginModel _loginModel;

  void signin(String emailEditingController,
      String passwordEditingController) async {
    try {
      Uri url = Uri.parse("https://admin.yuvan.dev/api/login");
      var res = await http.post(
        url,
        body: {
          "email": emailEditingController,
          "password": passwordEditingController
        },
      );

      Map<String, dynamic> body = jsonDecode(res.body);

      if (res.statusCode == 200) {
        LoginUser data = LoginUser.fromJson(body["data"]);

        Get.off(navigation(data.accessToken!));

        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) => navigation(data.accessToken!),
        //   ),
        // );
      } else {
        throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 32),
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: MediaQuery
                  //     .of(context)
                  //     .size
                  //     .height,
                  child: Column(
                    children: [
                      const SizedBox(height: 95),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 67 - 67,
                        child: Image.asset('assets/hotelpediared.png'),
                      ),
                      const SizedBox(height: 65),
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
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: TextFormField(
                          // onSaved: (input) => requestModel.email = input,
                          controller: emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            // contentPadding: EdgeInsets.only(top: 10),
                            border: UnderlineInputBorder(),
                            // hintText: 'yuvanfaridazizsu@gmail.com',
                            // hintStyle: TextStyle(
                            //     fontSize: 12, color: '424242'.toColor()),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
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
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: TextFormField(
                          // onSaved: (input) => requestModel.password = input,
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
                            // contentPadding: EdgeInsets.only(top: 20),
                            border: const UnderlineInputBorder(),
                            // hintText: 'Password',
                            // hintStyle: TextStyle(
                            //     fontSize: 12, color: '424242'.toColor()),
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 18,
                            child: Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 7),
                          Container(
                            child: Text(
                              "ingat",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: '818181'.toColor()),
                            ).tr(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 94),
                Column(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 61 - 62,
                      height: 48,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: 'C01414'.toColor(),
                        onPressed: () async {
                          //firebase
                          if (FirebaseAuth.instance.currentUser == null) {
                            await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                email: emailEditingController.text,
                                password: passwordEditingController.text);
                          }

                          //sharedPreferences
                          final SharedPreferences sharedPreferences = await SharedPreferences
                              .getInstance();
                          sharedPreferences.setString('email',
                              emailEditingController.text);

                          //post
                          signin(emailEditingController.text,
                              passwordEditingController.text);

                          //popup
                          Fluttertoast.showToast(
                              msg: "Berhasil Login",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: 'C01414'.toColor(),
                              textColor: Colors.white,
                              fontSize: 16.0);

                          //loading
                          setState(() {
                            isLoading = true;
                          });
                          Future.delayed(const Duration(seconds: 3), () {
                            setState(() {
                              isLoading = false;
                            });
                          });
                        },
                        child: isLoading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                          'tombolsignin',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ).tr(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'tanya1',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '818181'.toColor()),
                          ).tr(),
                        ),
                        const SizedBox(width: 2),
                        GestureDetector(
                          onTap: () {
                            Get.to(const signup());
                          },
                          child: Container(
                            child: Text(
                              'buat',
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: 'C01414'.toColor()),
                            ).tr(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    GestureDetector(
                      onTap: () async {
                        if (FirebaseAuth.instance.currentUser == null) {
                          GoogleSignInAccount? account =
                          await GoogleSignIn().signIn();

                          if (account != null) {
                            GoogleSignInAuthentication auth =
                            await account.authentication;
                            OAuthCredential credential =
                            GoogleAuthProvider.credential(
                              accessToken: auth.accessToken,
                              idToken: auth.idToken,
                            );
                            await FirebaseAuth.instance
                                .signInWithCredential(credential);
                          }
                        }
                        Get.off(navigation('token'));
                      },
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border:
                          Border.all(width: 1, color: '818181'.toColor()),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 14,
                              child: Image.asset('assets/google.png'),
                            ),
                            const SizedBox(width: 13),
                            Container(
                              child: Text(
                                'tombolgoogle',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: '6D6D6D'.toColor()),
                              ).tr(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
