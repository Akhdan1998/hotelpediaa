import 'package:flutter/material.dart';
import 'package:hotelpedia/hotel1.dart';

class hotel extends StatefulWidget {
  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.hardEdge,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          hotel1(),
          hotel1(),
          hotel1(),
        ],
      ),
    );
  }
}
