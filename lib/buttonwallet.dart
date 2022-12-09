import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

import 'buttonmodels.dart';
// import 'models.dart';

class button extends StatefulWidget {
  late final Select? select;
  late final bool? isActiv;
  late final ValueChanged<String>? onSelected;

  button({this.select, this.isActiv = false, this.onSelected});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  String selectedId = '';
  late final int cuan = 50000;
  late final int cuan1 = 100000;
  late final int cuan2 = 150000;
  late final int cuan3 = 200000;
  late final int cuan4 = 250000;
  late final int cuan5 = 500000;
  late final int cuan6 = 1000000;
  late final int cuan7 = 2500000;
  late final int cuan8 = 5000000;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          widget.onSelected!(widget.select!.id!);
        },
        child: Ink(
          // width: 98,
          padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color:
                  widget.isActiv == true ? 'C01414'.toColor() : 'D6D6D6'.toColor()),
          child: Center(
            child: Text(
              NumberFormat.currency(locale: 'id ', decimalDigits: 0)
                  .format(widget.select!.nominal),
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: 'FFFFFF'.toColor()),
            ),
          ),
        ),
      ),
      // InkWell(
      //   onTap: () {
      //     widget.onSelected!(widget.select!.id!);
      //   },
      //   child: Ink(
      //       child: Text(
      //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan1),
      //         style: GoogleFonts.poppins().copyWith(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 12,
      //             color: 'FFFFFF'.toColor()),
      //       ),
      //       color: widget.isActiv == true ? 'EB5C5C'.toColor() : Colors.white),
      // ),
      // InkWell(
      //   onTap: () {
      //     widget.onSelected!(widget.select!.id!);
      //   },
      //   child: Ink(
      //       child: Text(
      //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan2),
      //         style: GoogleFonts.poppins().copyWith(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 12,
      //             color: 'FFFFFF'.toColor()),
      //       ),
      //       color: widget.isActiv == true ? 'EB5C5C'.toColor() : Colors.white),
      // ),
      // InkWell(
      //   onTap: () {
      //     widget.onSelected!(widget.select!.id!);
      //   },
      //   child: Ink(
      //       child: Text(
      //         NumberFormat.currency(locale: 'id ', decimalDigits: 0).format(cuan3),
      //         style: GoogleFonts.poppins().copyWith(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 12,
      //             color: 'FFFFFF'.toColor()),
      //       ),
      //       color: widget.isActiv == true ? 'EB5C5C'.toColor() : Colors.white),
      // ),
    );
  }
}
