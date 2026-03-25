import'package:flutter/material.dart';
import'package:dotted_border/dotted_border.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:flutter_svg/svg.dart';
import 'text.dart';

DottedBorder UploadImageCard(BuildContext context) {
  return DottedBorder(
    color: Color(MyConstants.darkeBroune),

    strokeWidth: 3,
    dashPattern: [10, 6],
    child: Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.87,
      color: Color(MyConstants.LightOrange),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/UploadSimple.svg'),
          cairoRegular(
              text: 'قم برفع صورة لاجازة السوق',
              color: Color(MyConstants.darkeBroune)),
          TextButton(
              onPressed: () {},
              child: cairoRegular(
                  text: 'تصفح',
                  color: Color(MyConstants.MyOrange),style: TextDecoration.underline),),
        ],
      ),
    ),
  );
}