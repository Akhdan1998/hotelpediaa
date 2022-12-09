import 'package:flutter/material.dart';
import 'package:hotelpedia/wisata1.dart';

import 'kereta1.dart';

class wahana extends StatefulWidget {
  const wahana({Key? key}) : super(key: key);

  @override
  State<wahana> createState() => _wahanaState();
}

class _wahanaState extends State<wahana> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            wisata1(),
            wisata1(),
          ],
        ),
      ),
    );
  }
}
