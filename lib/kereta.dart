import 'package:flutter/material.dart';

import 'kereta1.dart';

class kereta extends StatefulWidget {
  const kereta({Key? key}) : super(key: key);

  @override
  State<kereta> createState() => _keretaState();
}

class _keretaState extends State<kereta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            kereta1(),
            kereta1(),
            kereta1(),
            kereta1(),
          ],
        ),
      ),
    );
  }
}
