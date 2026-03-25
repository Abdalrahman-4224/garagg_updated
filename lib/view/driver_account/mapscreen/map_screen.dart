
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:untitled/view/driver_account/generalwidget/driver_appbar.dart';
// import 'package:untitled/view/driver_account/generalwidget/navigatin_bar.dart';
// import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// class RouteScreen extends StatefulWidget {
//   const RouteScreen({Key? key}) : super(key: key);
// @override
//   State<RouteScreen> createState() => RouteScreenState();
// }
// class RouteScreenState extends State<RouteScreen> {
//   final Completer<GoogleMapController> _controller = Completer();
// static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
//   static const LatLng destination = LatLng(37.33429383, -122.06600055);
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [

//             Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(top: 12, right: 12, left: 12),
//                       child: Container(
//                         width: context.width * 0.15,
//                         height: context.height * 0.15,
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.1),
//                               spreadRadius: 5,
//                               blurRadius: 7,
//                               offset: const Offset(0, 3),
//                             ),
//                           ],
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                         ),
//                         child: IconButton(
//                           icon: SvgPicture.asset('assets/icons/Bell.svg'),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(top: 16.0, right: 16, left: 16),
//                       child: Container(
//                           width: context.width * 0.15,
//                           height: context.height * 0.15,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                                 width: 1.5, color: const Color(0xffF5DFCA)),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.1),
//                                 spreadRadius: 5,
//                                 blurRadius: 7,
//                                 offset: const Offset(0, 3),
//                               ),
//                             ],
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: IconButton(
//                             icon: Image.asset('assets/images/user.png'),
//                             onPressed: () {},
//                           )),
//                     ),
//                   ],
//                 ),
            
//           ],
//         ),
//       ],),
//     );
//   }
  
// }

