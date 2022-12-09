import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hotelpedia/navigation.dart';
import 'package:hotelpedia/paketwisata1.dart';
import 'package:hotelpedia/payment_detail.dart';
import 'package:hotelpedia/payment_detail_wisata.dart';
import 'package:hotelpedia/payment_method.dart';
import 'package:hotelpedia/penerbangan1.dart';
import 'package:hotelpedia/penerbangan2.dart';
import 'package:hotelpedia/pengaturan%20email%20nomor.dart';
import 'package:hotelpedia/pengaturan%20notifikasi.dart';
import 'package:hotelpedia/pengaturan.dart';
import 'package:hotelpedia/pilihhotel1.dart';
import 'package:hotelpedia/pilihkamar.dart';
import 'package:hotelpedia/profile.dart';
import 'package:hotelpedia/profilpenumpang.dart';
import 'package:hotelpedia/profilpenumpangdetail.dart';
import 'package:hotelpedia/recomenwisata1.dart';
import 'package:hotelpedia/room_detail.dart';
import 'package:hotelpedia/signin.dart';
import 'package:hotelpedia/signup.dart';
import 'package:hotelpedia/succes.dart';
import 'package:hotelpedia/daftarpenerbangan.dart';
import 'package:hotelpedia/successreservasi.dart';
import 'package:hotelpedia/syaratketentuan.dart';
import 'package:hotelpedia/tentang.dart';
import 'package:hotelpedia/ticket_detail_plane_departure.dart';
import 'package:hotelpedia/tiket_list_wisata.dart';
import 'package:hotelpedia/ulasan.dart';
import 'package:hotelpedia/ulasan1.dart';
import 'package:hotelpedia/verticalhotel1.dart';
import 'package:hotelpedia/video1.dart';
import 'package:hotelpedia/wallet.dart';
import 'package:hotelpedia/wisata1.dart';
import 'package:hotelpedia/wisata_list.dart';
import 'package:hotelpedia/wisatadetail.dart';
import 'package:supercharged/supercharged.dart';

import 'articles_desc.dart';
import 'artikel1.dart';
import 'carihotel.dart';
import 'cashback.dart';
import 'chekout.dart';
import 'chekoutwisata.dart';
import 'daftarhotel.dart';
import 'daftarkeretaapi.dart';
import 'destinasihotel1.dart';
import 'destinasiwisata1.dart';
import 'detailpembayaran.dart';
import 'ticket_detail_plane.dart';
import 'diskon.dart';
import 'editprofile.dart';
import 'feed_screen.dart';
import 'garuda.dart';
import 'home.dart';
import 'hotel_search - ketika belum diisi.dart';
import 'hotel_search - ketika sudah diisi.dart';
import 'hoteldetail.dart';
import 'kamar1.dart';
import 'kamar2.dart';
import 'kebijakanprivasi.dart';
import 'listgaruda.dart';
import 'listlionair.dart';
import 'listvideo.dart';
import 'maskapaigaruda.dart';
import 'hotel1.dart';
import 'kereta1.dart';
import 'kupon.dart';
import 'linksosmed.dart';
import 'my_ticket_screen_detail_kereta.dart';
import 'my_ticket_screen_detail_pesawat.dart';
import 'onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      child: const MyApp(),
      supportedLocales: const [Locale('id'), Locale('en', 'US')],
      path: 'assets/translations',
      startLocale: const Locale('id'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/hotelpedia.png'),
      nextScreen: onboarding(),
      splashIconSize: 50,
      splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.scale,
      backgroundColor: 'C01414'.toColor(),
    );
  }
}
