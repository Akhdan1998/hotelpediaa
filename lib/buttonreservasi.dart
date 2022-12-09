// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:supercharged/supercharged.dart';
//
// import 'buttonmodels.dart';
//
// class buttonreservasi extends StatefulWidget {
//   late final Select? select;
//   late final bool? isActiv;
//   late final ValueChanged<String>? onSelected;
//
//   buttonreservasi({this.select, this.isActiv = false, this.onSelected});
//
//   @override
//   State<buttonreservasi> createState() => _buttonreservasiState();
// }
//
// class _buttonreservasiState extends State<buttonreservasi> {
//   PageController pageController = PageController(initialPage: 0);
//   int pageChanged = 0;
//   String selectedId = '';
//   late final String hotel = 'Hotel';
//   late final String penerbangan = 'Penerbangan';
//   late final String kereta = 'Kereta';
//   late final String wahana = 'Wahana';
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: InkWell(
//         onTap: () {
//           widget.onSelected!(widget.select!.id!);
//           pageController.animateToPage(0,
//               duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
//           pageController.animateToPage(1,
//               duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
//           pageController.animateToPage(2,
//               duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
//           pageController.animateToPage(3,
//               duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
//         },
//         child: Ink(
//           // width: 94,
//           padding: EdgeInsets.only(left: 9, right: 9, top: 5, bottom: 5),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: widget.isActiv == true
//                   ? 'C01414'.toColor()
//                   : 'D6D6D6'.toColor()),
//           child: Center(
//             child: Text(
//               widget.select!.pilih!,
//               style: GoogleFonts.poppins().copyWith(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                   color: 'FFFFFF'.toColor()),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
