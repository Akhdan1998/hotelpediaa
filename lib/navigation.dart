import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/profile.dart';
import 'package:hotelpedia/reservasi.dart';
import 'package:hotelpedia/signin_model.dart';
import 'package:supercharged/supercharged.dart';
import 'package:hotelpedia/getdata_API_Auth_Services.dart';
import 'getdata_API_Auth_Model.dart';
import 'getdata_API_Auth_Services.dart';
import 'home.dart';

class navigation extends StatefulWidget {
  navigation(this.token, {super.key});

  String token;

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int _selectedIndex = 0;
  PageController controller = PageController();

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });

    controller.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: 'C01414'.toColor(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Expanded(
            //   flex: 500,
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(18),
            //           topRight: Radius.circular(18)),
            //     ),
            //     child: Container(
            //       child: PageView(
            //         physics: NeverScrollableScrollPhysics(),
            //         controller: controller,
            //         children: [
            //           home(),
            //           reservasi(),
            //           profile(widget.token),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .where('email, isEqualTo: current.currentUser!.email')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data!.docs[0];
                    return Container(
                      height: MediaQuery.of(context).size.height - 56,
                      width: MediaQuery.of(context).size.width,
                      child: PageView(controller: controller, children: [
                        home(),
                        reservasi(),
                        profile(widget.token),
                      ]),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            // StreamBuilder(
            //   stream: FirebaseFirestore.instance
            //       .collection('users')
            //       .where('email, isEqualTo: current.currentUser!.email')
            //       .snapshots(),
            //   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            //     if (snapshot.hasData) {
            //       var data = snapshot.data!.docs[0];
            //       return Expanded(
            //           flex: 500,
            //           child: Container(
            //             width: MediaQuery.of(context).size.width,
            //             decoration: const BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(18),
            //                   topRight: Radius.circular(18)),
            //             ),
            //             child: PageView(
            //               physics: const NeverScrollableScrollPhysics(),
            //               controller: controller,
            //               children: [
            //                 const home(),
            //                 reservasi(),
            //                 profile(
            //                   fullname: data['fullname'] ?? '-',
            //                   job: data['job'] ?? '-',
            //                   datebirth: data['datebirth'] ?? '-',
            //                   email: data['email'] ?? '-',
            //                   password: data['password'] ?? '-',
            //                   token: ''
            //                 ),
            //               ],
            //             ),
            //           ),
            //         );
            //     } else {
            //       return Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }
            //   },
            // ),
            BottomNavigationBar(
              currentIndex: _selectedIndex,
              selectedItemColor: 'C01414'.toColor(),
              onTap: _navigateBottomBar,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Image.asset('assets/home.png', scale: 1.5),
                  activeIcon: Image.asset('assets/home.png',
                      color: 'C01414'.toColor(), scale: 1.5),
                ),
                BottomNavigationBarItem(
                  label: 'Reservation',
                  icon: Image.asset('assets/reservation.png', scale: 1.5),
                  activeIcon: Image.asset('assets/reservation.png',
                      color: 'C01414'.toColor(), scale: 1.5),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Image.asset('assets/profile.png', scale: 1.5),
                  activeIcon: Image.asset('assets/profile.png',
                      scale: 1.5, color: 'C01414'.toColor()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
