import 'package:flutter/material.dart';

import 'garuda.dart';
import 'lionair.dart';
import 'maskapaigaruda.dart';
import 'maskapailionair.dart';

class listlionair extends StatefulWidget {
  @override
  State<listlionair> createState() => _listlionairState();
}

class _listlionairState extends State<listlionair> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            maskapailionair(),
            SizedBox(height: 11),
            lionair(),
          ],
        ),
      ),
    );
  }
}
