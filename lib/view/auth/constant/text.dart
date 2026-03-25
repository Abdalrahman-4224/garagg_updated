import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/const_var.dart';

Directionality cairoRegular({required String text, required Color color,TextDecoration? style }) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Text(
      text,
      style: TextStyle(
        decoration: style,
          decorationColor: Color(MyConstants.MyOrange),
          fontFamily: 'cairo', fontSize: 13.sp, color: color),
    ),
  );}




Directionality cairoBold({required String text, required Color color ,TextDecoration? style}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Text(
      text,
      style: TextStyle(
        decoration:style,
          decorationColor: Color(MyConstants.MyOrange),
          fontFamily: 'cairo',
          fontSize: 28.sp,
          fontWeight: FontWeight.w500,
          color: color),
    ),
  );
}
