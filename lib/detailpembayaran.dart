import 'dart:async';
import 'package:clipboard/clipboard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelpedia/successreservasi.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class detailpembayaran extends StatefulWidget {
  const detailpembayaran({Key? key}) : super(key: key);

  @override
  State<detailpembayaran> createState() => _detailpembayaranState();
}

class _detailpembayaranState extends State<detailpembayaran>
    with SingleTickerProviderStateMixin {
  final int kodetransaksi = 103714992;
  final int pembayaran = 1226300;
  final int pembayaranhotel = 1000000;
  final int nominal = 100000;
  final int biaya = 4500;
  final int va = 57585748548596587;
  DateTime data = DateTime.now();
  static const countdownDuration = Duration(hours: 2);
  Duration duration = Duration();
  Timer? timer;

  bool isCountdown = true;

  @override
  void initState() {
    super.initState();

    startTimer();
    reset();
  }

  void reset() {
    if (isCountdown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void addTime() {
    final addSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }

      duration = Duration(seconds: seconds);
    });
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  'juduldetailpembayaran',
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
                width: MediaQuery.of(context).size.width,
                // height: 71,
                color: 'C01414'.toColor(),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              'orderid',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: '323232'.toColor()),
                            ).tr(),
                          ),
                          SizedBox(width: 3),
                          Text(
                            ':',
                            style: GoogleFonts.montserrat().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: '323232'.toColor()),
                          ),
                          SizedBox(width: 3),
                          Container(
                            width: MediaQuery.of(context).size.width - 118,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '$kodetransaksi',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: '323232'.toColor()),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    child: Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'totalpembayaran',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: '323232'.toColor()),
                              ).tr(),
                            ),
                            Text(
                                NumberFormat.currency(
                                        locale: 'id', decimalDigits: 0)
                                    .format(pembayaran),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: 'C01414'.toColor())),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'tanggaltransaksi',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: '6F6F6F'.toColor()),
                      ).tr(),
                    ),
                    Text(
                        DateFormat.Hm().format(data) +
                            " WIB"
                                " " +
                            DateFormat.yMMMMd().format(data),
                        // DateTime.now().toString(),
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: '3C3D3F'.toColor())),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'deskripsitransaksi',
                        style: GoogleFonts.montserrat().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: '6F6F6F'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Wrap(
                        spacing: 3,
                        children: [
                          Container(
                            child: Text('pembayaranhotel',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text('$kodetransaksi',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor())),
                          ),
                          Container(
                            child: Text('senilai',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text(
                                NumberFormat.currency(
                                        locale: 'id', decimalDigits: 0)
                                    .format(pembayaranhotel),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor())),
                          ),
                          Container(
                            child: Text('padatanggal',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text(
                                DateFormat.Hm().format(data) +
                                    " WIB"
                                        " " +
                                    DateFormat.yMMMMd().format(data),
                                // DateTime.now().toString(),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor())),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'juduldetailpembayaran',
                        style: GoogleFonts.montserrat().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: '3C3D3F'.toColor()),
                      ).tr(),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'nominal',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: '6F6F6F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text(
                                NumberFormat.currency(
                                        locale: 'id', decimalDigits: 0)
                                    .format(nominal),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor())),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'biaya',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                  color: '6F6F6F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text(
                                NumberFormat.currency(
                                        locale: 'id', decimalDigits: 0)
                                    .format(biaya),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: '3C3D3F'.toColor())),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'totalpembayaran',
                              style: GoogleFonts.montserrat().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: '6F6F6F'.toColor()),
                            ).tr(),
                          ),
                          Container(
                            child: Text(
                                NumberFormat.currency(
                                        locale: 'id', decimalDigits: 0)
                                    .format(pembayaran),
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: 'C01414'.toColor())),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  height: 156,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: 'F5F5F5'.toColor(),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'kodepembayaran',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: '363636'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Text(
                                'BCA VA',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: '80B541'.toColor()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 15),
                      Container(
                        child: Text(
                          '$va',
                          style: GoogleFonts.montserrat().copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: '1A1A1A'.toColor()),
                        ),
                      ),
                      // SizedBox(height: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'bataspembayaran',
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: 'C01414'.toColor()),
                              ).tr(),
                            ),
                            Container(
                              child: Text(
                                DateFormat.Hm().format(data) +
                                    " - " +
                                    DateFormat.yMMMMd().format(data),
                                style: GoogleFonts.montserrat().copyWith(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: 'C01414'.toColor()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 11),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 25,
                        child: FlatButton(
                          shape:
                              Border.all(width: 1, color: '80B541'.toColor()),
                          onPressed: () async {
                            Fluttertoast.showToast(
                                msg: "Kode Pembayaran Berhasil Disalin",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: 'C01414'.toColor(),
                                textColor: Colors.white,
                                fontSize: 16);
                            await FlutterClipboard.copy('$va');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(Icons.copy,
                                    size: 10, color: '80B541'.toColor()),
                              ),
                              SizedBox(width: 5),
                              Container(
                                child: Text(
                                  'tombolsalin',
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: '80B541'.toColor()),
                                ).tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: 90,
        padding: EdgeInsets.fromLTRB(13, 11, 13, 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'selesaikanpembayaran',
                      style: GoogleFonts.montserrat().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: '323232'.toColor()),
                    ).tr(),
                  ),
                  buildTime(),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 34,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: 'C01414'.toColor(),
                onPressed: () {
                  Get.to(succesreservasi());
                },
                child: Text('tombolbayarsekarang',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                ).tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final hours = twoDigits(duration.inHours.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(width: 10),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(width: 10),
        buildTimeCard(time: seconds, header: 'SECONDS'),
      ],
    );

    return Text(
      '$minutes:$seconds',
      style: TextStyle(fontSize: 30),
    );
  }

  Widget buildTimeCard({required String time, required String header}) => Container(
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
      color: 'FCDDDD'.toColor(),
      borderRadius: BorderRadius.circular(2),
    ),
    child: Text(
      time,
      style: GoogleFonts.poppins().copyWith(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: '323232'.toColor()),
    ),
  );
}
