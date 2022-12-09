import 'package:flutter/material.dart';
import 'package:hotelpedia/penerbangan1.dart';
import 'package:hotelpedia/penerbangan2.dart';

class penerbangan extends StatefulWidget {

  @override
  State<penerbangan> createState() => _penerbanganState();
}

class _penerbanganState extends State<penerbangan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            penerbangan1(),
            penerbangan1(),
            penerbangan1(),
            penerbangan1(),
          ],
        ),
      ),
    );
  }
}
