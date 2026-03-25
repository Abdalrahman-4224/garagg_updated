import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:get/get.dart';
import 'driver_account_4.dart';
class DriverAccount3 extends StatefulWidget {
  const DriverAccount3({Key? key}) : super(key: key);

  @override
  State<DriverAccount3> createState() => _DriverAccount3State();
}

class _DriverAccount3State extends State<DriverAccount3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar() ,
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SvgPicture.asset('assets/icons/Indicator (3.3).svg'),
          SizedBox(height: 12,width: double.infinity,),
          SvgPicture.asset('assets/icons/BarCode.svg'),
          SizedBox(height: 12,),
          Text(
            'قم بانتضار المالك لأضافتك',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'cairo', fontSize: 26.sp, color: Color(0xff7B572D)),
          ),
          SizedBox(height: 12.h,),
          orangeIconButton(text: "ابحث عن عمل", onTap: (){Get.to(()=>DriverAccount4());}, imageName: 'assets/icons/MagnifyingGlass.svg'),
        ],),
      ) ,
    );
  }
}
