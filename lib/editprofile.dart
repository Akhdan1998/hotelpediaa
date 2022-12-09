import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:auth/auth.dart';
import 'package:http/http.dart' as http;

import 'editprofile_model.dart';

class editprofile extends StatefulWidget {
  final String? token;
  final String? fullname;
  final String? job;
  final String? email;

  editprofile(
      {required this.token,
      this.fullname,
      this.job,
      this.email,
  });

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  // Future<editUser> getDataUser() async {
  //   try {
  //     Uri url = Uri.parse("https://admin.yuvan.dev/api/user");
  //     var res = await http.post(
  //       url,
  //       headers: {
  //         "Accept": "application/json",
  //         // "Authorization": "Bearer ${widget.token}",
  //       },
  //     );
  //     //bearer widget token
  //
  //     //bearer iewihikj347947590843
  //     Map<String, dynamic> body = jsonDecode(res.body);
  //     if (res.statusCode == 200) {
  //       return editUser.fromJson(body["data"]);
  //     } else {
  //       throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
  //     }
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  updateData() async {
    var job = jobEditingController.text;
    var email = emailEditingController.text;
    var password = passwordEditingController.text;
    try {
      if (job.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        var url = Uri.parse("https://admin.yuvan.dev/api/user");
        var bodyData = json.encode({
          "job": jobEditingController,
          "email": emailEditingController,
          "password": passwordEditingController,
        });
        var response = await http.post(url,
            headers: {
              "Accept": "application/json",
              "Authorization": "Bearer ${widget.token}",
            },
            body: bodyData);
        Map<String, dynamic> body = jsonDecode(response.body);
        if (response.statusCode == 200) {
          editUser data = editUser.fromJson(body["data"]);
          // var message = json.decode(response.body)['message'];
          // showMessage(context, message);
          setState(() {
            jobEditingController.text = "";
            emailEditingController.text = "";
            passwordEditingController.text = "";
          });
        } else {
          throw "Error ${response.statusCode} => ${body["meta"]["message"]}";
        }
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
    }
  }

  // void updateData(String emailEditingController,
  //     String passwordEditingController, String jobEditingController) async {
  //   try {
  //     Uri url = Uri.parse("https://admin.yuvan.dev/api/user");
  //     var res = await http.post(
  //       url,
  //       body: {
  //         "job": jobEditingController,
  //         "email": emailEditingController,
  //         "password": passwordEditingController
  //       },
  //       headers: {
  //         "Accept": "application/json",
  //         "Authorization": "Bearer ${widget.token}",
  //       },
  //     );
  //
  //     Map<String, dynamic> body = jsonDecode(res.body);
  //
  //     if (res.statusCode == 200) {
  //       editUser data = editUser.fromJson(body["data"]);
  //       // Navigator.of(context).pushReplacement(
  //       //   MaterialPageRoute(
  //       //     builder: (context) => navigation(data.accessToken!),
  //       //   ),
  //       // );
  //     } else {
  //       throw "Error ${res.statusCode} => ${body["meta"]["message"]}";
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$e")));
  //   }
  // }

  // String jobString = '';
  // String emailString = '';
  // String passwordString = '';

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setState(() {
  //     jobEditingController.text = widget.job!;
  //     jobEditingController.text = widget.email!;
  //     jobEditingController.text = widget.email!;
  //   });
  // }

  // Future<editUser>? getDataUser() {
  //     var url = Uri.parse("https://admin.yuvan.dev/api/user");
  //     http.post(url, headers: {
  //       "Accept": "application/json",
  //     });
  //   return null;
  // }

  // Future<editUser?> getDataUser(String job, String email, String password) async {
  //   var response =
  //   await http.post(Uri.https("admin.yuvan.dev", "api/user"), body: {
  //     "job": job,
  //     "email": email,
  //     "password": password
  //   });
  //   var data = response.body;
  //   print(response.body);
  //   if (response.statusCode == 500) {
  //     String responseString = response.body;
  //     // editUser(responseString);
  //   } else
  //     return null;
  // }

  final jobEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance;
  String jobString = '';
  String emailString = '';
  String passwordString = '';

  // @override
  // initState() {
  //   super.initState();
  //   jobEditingController.text = widget.job!;
  //   emailEditingController.text = widget.email!;
  //   passwordEditingController.text = widget.password!;
  // }

  @override
  void dispose() {
    emailEditingController.dispose();
    super.dispose();
  }

  String selectedId = '';

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: 'C01414'.toColor(),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 11),
            Container(
              child: Text(
                'juduleditprofil',
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ).tr(),
            ),
          ],
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users')
              .where('email, isEqualTo: current.currentUser!.email')
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!.docs[0];
              return SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 30,
                            color: 'C01414'.toColor(),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(18),
                                  topLeft: Radius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          Stack(
                            fit: StackFit.loose,
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 86,
                                    height: 86,
                                    child: Image.asset('assets/fotoin.png'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 55, left: 65),
                                child: Icon(Icons.add_circle,
                                    color: 'C01414'.toColor(), size: 30),
                              ),
                            ],
                          ),
                          SizedBox(height: 90),
                          Container(
                            // height: 183,
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: Column(
                              children: [
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
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    controller: jobEditingController,
                                    onChanged: (value) {
                                      setState(() {
                                        jobString = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: 'C01414'.toColor(),
                                        size: 17,
                                      ),
                                      border: UnderlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
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
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    onChanged: (value) {
                                      setState(() {
                                        emailString = value;
                                      });
                                    },
                                    controller: emailEditingController,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: 'C01414'.toColor(),
                                        size: 17,
                                      ),
                                      border: UnderlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
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
                                Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width,
                                  child: TextFormField(
                                    onChanged: (value) {
                                      setState(() {
                                        passwordString = value;
                                      });
                                    },
                                    controller: passwordEditingController,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: 'C01414'.toColor(),
                                        size: 17,
                                      ),
                                      border: const UnderlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 141),
                          // Container(
                          //   alignment: Alignment.bottomCenter,
                          //   width: MediaQuery.of(context).size.width,
                          //   height: 54,
                          //   padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
                          //   child: Container(
                          //     width: MediaQuery.of(context).size.width,
                          //     height: 34,
                          //     child: FlatButton(
                          //       shape:
                          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          //       color: 'C01414'.toColor(),
                          //       onPressed: () async {
                          //         Fluttertoast.showToast(
                          //             msg: "Done Update",
                          //             toastLength: Toast.LENGTH_SHORT,
                          //             gravity: ToastGravity.BOTTOM,
                          //             backgroundColor: 'C01414'.toColor(),
                          //             textColor: Colors.white,
                          //             fontSize: 16.0
                          //         );
                          //         Navigator.pop(context);
                          //         try {
                          //           await FirebaseAuth.instance
                          //               .sendPasswordResetEmail(
                          //               email: emailEditingController.text.trim());
                          //           snapshot.data!.docs[0].reference.update({
                          //             'password': passwordEditingController.text,
                          //           });
                          //         } on FirebaseAuthException catch (e) {
                          //           print(e);
                          //         }
                          //         setState(() {
                          //           jobString = jobEditingController.text;
                          //         });
                          //         snapshot.data!.docs[0].reference.update({
                          //           'job': jobEditingController.text,
                          //           'email': emailEditingController.text,
                          //           'password': passwordEditingController.text,
                          //           'selectedId': selectedId,
                          //         });
                          //         // updateData();
                          //         // setState(() {
                          //         //   jobString = jobEditingController.text;
                          //         //   emailString = emailEditingController.text;
                          //         //   passwordString = passwordEditingController.text;
                          //         // });
                          //         // updateData();
                          //         // var job = jobEditingController.text;
                          //         // var email = emailEditingController.text;
                          //         // var password = passwordEditingController.text;
                          //         // if (job.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
                          //         //   var url = Uri.parse("https://admin.yuvan.dev/api/user");
                          //         //   var bodyData = json.encode({
                          //         //     "job": jobEditingController,
                          //         //     "email": emailEditingController,
                          //         //     "password": passwordEditingController,
                          //         //   });
                          //         //   var response = await http.post(url,
                          //         //       headers: {
                          //         //         "Content-Type": "application/json",
                          //         //         "Accept": "application/json"
                          //         //       },
                          //         //       body: bodyData);
                          //         //   Map<String, dynamic> body = jsonDecode(response.body);
                          //         //   if (response.statusCode == 200) {
                          //         //     editUser data = editUser.fromJson(body["data"]);
                          //         //     // var message = json.decode(response.body)['message'];
                          //         //     // showMessage(context, message);
                          //         //     // setState(() {
                          //         //     //   jobEditingController.text = "";
                          //         //     //   emailEditingController.text = "";
                          //         //     //   passwordEditingController.text = "";
                          //         //     // });
                          //         //   } else {
                          //         //     throw "Error ${response.statusCode} => ${body["meta"]["message"]}";
                          //         //   }
                          //         // }
                          //       },
                          //       child: Text(
                          //         'tombolsimpanprofil',
                          //         style: GoogleFonts.poppins().copyWith(
                          //             fontSize: 12,
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.white),
                          //       ).tr(),
                          //     ),
                          //   ),
                          // ),
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
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
            onPressed: () async {
              Fluttertoast.showToast(
                              msg: "Done Update",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: 'C01414'.toColor(),
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                          Navigator.pop(context);
                          // try {
                          //   await FirebaseAuth.instance
                          //       .sendPasswordResetEmail(
                          //       email: emailEditingController.text.trim());
                          //   snapshot.data!.docs[0].reference.update({
                          //     'password': passwordEditingController.text,
                          //   });
                          // } on FirebaseAuthException catch (e) {
                          //   print(e);
                          // }
                          setState(() {
                            jobString = jobEditingController.text;
                          });
                          // snapshot.data!.docs[0].reference.update({
                          //   'job': jobEditingController.text,
                          //   'email': emailEditingController.text,
                          //   'password': passwordEditingController.text,
                          //   'selectedId': selectedId,
            },
            child: Text(
              'tombolsimpanprofil',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ).tr(),
          ),
        ),
      ),

      // FutureBuilder(
      //   future: updateData(jobEditingController.text, emailEditingController.text, passwordEditingController.text),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //
      //     if (snapshot.hasError) {
      //       return Center(
      //         child: Text("${snapshot.error}"),
      //       );
      //     }
      //
      //     Object data = snapshot.data!;
      // return

      //   },
      // ),
      // bottomNavigationBar: Container(
      //   alignment: Alignment.bottomCenter,
      //   width: MediaQuery.of(context).size.width,
      //   height: 54,
      //   padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 34,
      //     child: FlatButton(
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //       color: 'C01414'.toColor(),
      //       onPressed: () async {
      //         Fluttertoast.showToast(
      //             msg: "Done Update",
      //             toastLength: Toast.LENGTH_SHORT,
      //             gravity: ToastGravity.BOTTOM,
      //             backgroundColor: 'C01414'.toColor(),
      //             textColor: Colors.white,
      //             fontSize: 16.0
      //         );
      //         Navigator.pop(context);
      //         try {
      //           await FirebaseAuth.instance
      //               .sendPasswordResetEmail(
      //               email: emailEditingController.text.trim());
      //           snapshot.data!.docs[0].reference.update({
      //             'password': passwordEditingController.text,
      //           });
      //         } on FirebaseAuthException catch (e) {
      //           print(e);
      //         }
      //         setState(() {
      //           jobString = jobEditingController.text;
      //         });
      //         snapshot.data!.docs[0].reference.update({
      //           'job': jobEditingController.text,
      //           'email': emailEditingController.text,
      //           'password': passwordEditingController.text,
      //           'selectedId': selectedId,
      //         });
      //         // updateData();
      //         // setState(() {
      //         //   jobString = jobEditingController.text;
      //         //   emailString = emailEditingController.text;
      //         //   passwordString = passwordEditingController.text;
      //         // });
      //         // updateData();
      //         // var job = jobEditingController.text;
      //         // var email = emailEditingController.text;
      //         // var password = passwordEditingController.text;
      //         // if (job.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
      //         //   var url = Uri.parse("https://admin.yuvan.dev/api/user");
      //         //   var bodyData = json.encode({
      //         //     "job": jobEditingController,
      //         //     "email": emailEditingController,
      //         //     "password": passwordEditingController,
      //         //   });
      //         //   var response = await http.post(url,
      //         //       headers: {
      //         //         "Content-Type": "application/json",
      //         //         "Accept": "application/json"
      //         //       },
      //         //       body: bodyData);
      //         //   Map<String, dynamic> body = jsonDecode(response.body);
      //         //   if (response.statusCode == 200) {
      //         //     editUser data = editUser.fromJson(body["data"]);
      //         //     // var message = json.decode(response.body)['message'];
      //         //     // showMessage(context, message);
      //         //     // setState(() {
      //         //     //   jobEditingController.text = "";
      //         //     //   emailEditingController.text = "";
      //         //     //   passwordEditingController.text = "";
      //         //     // });
      //         //   } else {
      //         //     throw "Error ${response.statusCode} => ${body["meta"]["message"]}";
      //         //   }
      //         // }
      //       },
      //       child: Text(
      //         'tombolsimpanprofil',
      //         style: GoogleFonts.poppins().copyWith(
      //             fontSize: 12,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white),
      //       ).tr(),
      //     ),
      //   ),
      // ),
    );
  }
}
