import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/text_field.dart';
import 'package:untitled/view/auth/constant/uploadingimage.dart';
import 'owner_account_3.dart';
class OwnerAccount2 extends StatefulWidget {
  @override
  _OwnerAccount2State createState() => _OwnerAccount2State();
}

class _OwnerAccount2State extends State<OwnerAccount2> {
  // Initial value for dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyConstants.backGroundColor),
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cairoBold(text: 'معلومات السيارة', color: Colors.black),
              SizedBox(
                height: 12,
              ),
              SvgPicture.asset('assets/icons/Indicator (2).svg'),
              SizedBox(height: 12),
              Container(
                width: 90.w,
                height: 7.h,
                child: Row(children: [
                  CustomShortDropDownField(dropdownValue: 'حرف اللوحة', options: ['حرف اللوحة','أ','ب','ت','ث','خ','د','ذ','ر'], title: "حرف اللوحة"),
                  SizedBox(width:10,),
                  customizableTextField(height:7.h,width:23.5.h,title: "رقم اللوحة", imageName: "assets/icons/car number.svg"),
                ],),
              ),
              SizedBox(height: 12,),
              CustomDropDownField(dropdownValue: "المحافضة",options: ['المحافضة','نجف','اربيل','موصل'],title: "المحافضة",),
              SizedBox(height: 12),
              CustomDropDownField(dropdownValue: 'نوع اللوحة', options: ['نوع اللوحة','مدني','حكومي'],title: 'نوع اللوحة',),
              SizedBox(height: 12.0),
              customTextField(title: 'رقم الشاصي',imageName: 'assets/icons/car number.svg',),
              SizedBox(height: 12,),
              CustomDropDownField(dropdownValue: 'نوع المركبة', options: ['نوع المركبة','صالون','حمل'],title: 'نوع المركبة',),
              SizedBox(height: 12.0),
              CustomDropDownField(title: 'موديل المركبة', dropdownValue:'موديل المركبة',options: ['موديل المركبة','2015','2016','2017','2018','2019','2020','2021','2022','2024',]),
              SizedBox(height: 12.0),
              customTextField(
                  title: 'سنة الصنع', imageName: 'assets/icons/calendar.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: "اللون", imageName: 'assets/icons/Palette.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: "عدد المقاعد",
                  imageName: 'assets/icons/seat.svg'),
              SizedBox(height: 12.0),
              UploadImageCard(context),
              SizedBox(height: 12,),
              UploadImageCard(context),
              SizedBox(
                height: 12,
              ),
              orangeIconButton(
                  text: 'التالي',
                  onTap: () {Get.to(()=>OwnerAccount3());},
                  imageName: 'assets/icons/CaretLeft.svg'),
            ],
          ),
        ),
      ),
    );
  }

}
