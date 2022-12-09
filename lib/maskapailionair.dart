import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class maskapailionair extends StatefulWidget {
  const maskapailionair({Key? key}) : super(key: key);

  @override
  State<maskapailionair> createState() => _maskapailionairState();
}

class _maskapailionairState extends State<maskapailionair> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 40,
          padding: EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Container(
                width: 29,
                height: 17,
                child: Image.asset('assets/lionair.png'),
              ),
              SizedBox(width: 10),
              Container(
                child: Text(
                  'Lion Air',
                  style: GoogleFonts.poppins().copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 11,
                      color: '6C6C6C'.toColor()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
