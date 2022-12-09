import 'package:flutter/material.dart';

import 'garuda.dart';
import 'maskapaigaruda.dart';

class listgaruda extends StatefulWidget {
  @override
  State<listgaruda> createState() => _listgarudaState();
}

class _listgarudaState extends State<listgaruda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            maskapaigaruda(),
            SizedBox(height: 11),
            garuda(),
          ],
        ),
      ),
    );
  }
}
