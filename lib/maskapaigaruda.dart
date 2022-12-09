import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class maskapaigaruda extends StatefulWidget {
  const maskapaigaruda({Key? key}) : super(key: key);

  @override
  State<maskapaigaruda> createState() => _maskapaigarudaState();
}

class _maskapaigarudaState extends State<maskapaigaruda> {
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
                width: 23.4,
                height: 12.6,
                child: Image.asset('assets/garuda.png'),
              ),
              SizedBox(width: 10),
              Container(
                child: Text(
                  'Garuda Indonesia',
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
