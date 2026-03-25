import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/text_field.dart';
import 'owner_account_4.dart';
class OwnerAccount3 extends StatefulWidget {
  const OwnerAccount3({Key? key}) : super(key: key);

  @override
  State<OwnerAccount3> createState() => _OwnerAccount3State();
}

class _OwnerAccount3State extends State<OwnerAccount3> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(MyConstants.backGroundColor),

      body:Stack(
        children: [
          SvgPicture.asset('assets/images/mapBackground.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Align(
                  alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0,right: 12,bottom: 20),
                      child: SvgPicture.asset('assets/icons/custombackrow.svg'),
                    ))),
            cairoBold(text: 'أضف صورة شخصية', color: Colors.black),
            SizedBox(height: 12,),
            SvgPicture.asset('assets/icons/Indicator (3).svg'),
            SizedBox(height: 22,),
            Stack(
              children: [Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepOrangeAccent,
                      Color(MyConstants.MyOrange),
                    ]
                  ),

                ),
                child:Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset('assets/images/Empty_Avatar.svg'),
                ),
                

              ),]
            ),

            SizedBox(height: 12),
            Row(crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20.w,),
              Directionality(textDirection: TextDirection.rtl,
                  child: customizableTextField(title: 'اختر من المعرض', imageName: "", width: 50.w, height: 7.h)),
              SizedBox(width: 6,),
              SvgPicture.asset('assets/icons/CameraIcon.svg')
            ],),
              SizedBox(height: 12.h,),
              orangeIconButton(text: 'التالي', onTap: (){Get.to(()=>OwnerAccount4());}, imageName: 'assets/icons/CaretLeft.svg'),

            
          ],)


        ],
      ),
    );
  }
}
