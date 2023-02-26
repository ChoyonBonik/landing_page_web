// import 'package:flutter/material.dart';
// import 'package:landing_page_web/utils/responsiveLayout.dart';
//
// class Navbar extends StatelessWidget {
//   const Navbar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final navLinks = ["Home", "Products", "Features", "Contact"];
//
//     List<Widget> navItem() {
//       return navLinks.map((text) {
//         return Padding(
//           padding: EdgeInsets.only(left: 18),
//           child: Text(text, style: TextStyle(fontFamily: "Montserrat-Bold")),
//         );
//       }).toList();
//     }
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         vertical: 38,
//         horizontal: 45,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Image.asset('assets/images/abedokb.png', width: 50, height: 50,),
//               SizedBox(
//                 width: 16,
//               ),
//               Text("Abedok", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xffbe047d)))
//             ],
//           ),
//           if (!ResponsiveLayout.isSmallScreen(context))
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[...navItem()]..add(InkWell(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 20),
//                     width: 120,
//                     height: 40,
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             colors: [Color(0xffe90d65),
//                               Color(0xffac0087),],
//                             begin: Alignment.bottomRight,
//                             end: Alignment.topLeft),
//                         borderRadius: BorderRadius.circular(20),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Color(0xFF6078ea).withOpacity(.3),
//                               offset: Offset(0, 8),
//                               blurRadius: 8)
//                         ]),
//                     child: Material(
//                       color: Colors.transparent,
//                       child: Center(
//                         child: Text("Login",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 letterSpacing: 1,
//                                 fontFamily: "Montserrat-Bold")),
//                       ),
//                     ),
//                   ))),
//             )
//           else
//             Image.asset("assets/images/menuu.png", width: 26, height: 26)
//         ],
//       ),
//     );
//   }
// }
