import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'congrars.dart';
import 'package:get/get.dart';
class OwnerAccount4 extends StatefulWidget {
  const OwnerAccount4({Key? key}) : super(key: key);

  @override
  State<OwnerAccount4> createState() => _OwnerAccount4State();
}

class _OwnerAccount4State extends State<OwnerAccount4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyConstants.backGroundColor),
      appBar:MyAppBar() ,
      body:SafeArea(
        child: Column(children: [
          SvgPicture.asset('assets/icons/Indicator (4).svg'),
          SizedBox(height: 12,),
          SvgPicture.asset('assets/icons/BarCode.svg'),
          SizedBox(height: 12,),
          Text(
            'اذهب الى الهيئة لتفعيل حسابك',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'cairo', fontSize: 26.sp, color: Color(0xff7B572D)),
          ),
          SizedBox(height: 12.h,),
          orangeIconButton(text: "استمرار", onTap: (){Get.to(()=>Congrats());}, imageName: 'assets/icons/card.svg'),
        ],),
      ) ,
    );
  }
}
