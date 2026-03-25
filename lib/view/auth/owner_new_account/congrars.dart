import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:get/get.dart';
import 'package:untitled/view/driver_account/generalwidget/navigatin_bar.dart';
class Congrats extends StatefulWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyConstants.backGroundColor),
      body:Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(height: 10.h,width: double.infinity,),
        SvgPicture.asset('assets/icons/congratsicon.svg'),
          Text(
            'تهانينا',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'cairo', fontSize: 36.sp, color: Color(MyConstants.MyOrange)),
          ),
        cairoRegular(text: 'تم انشاء الحساب بنجاح', color: Color(MyConstants.darkeBroune)),
        SizedBox(height: 36.h,),
        orangeButton(text: "استمرار", onTap: () {
          Get.offAll(() => CustomNavigationBar());
        },),
      ],) ,
    );
  }
}
