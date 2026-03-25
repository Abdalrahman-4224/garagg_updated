import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
AppBar MyAppBar() {
  return AppBar(

    backgroundColor: Color(MyConstants.backGroundColor),
    automaticallyImplyLeading: false,
    actions: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset('assets/icons/custombackrow.svg')),
    ),],
  );
}