import 'package:flutter/material.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/text_field.dart';
import 'package:untitled/main.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/driver_new_account/driver_account_5.dart';
import 'package:sizer/sizer.dart';
class DriverAccount4 extends StatefulWidget {
  const DriverAccount4({Key? key}) : super(key: key);

  @override
  State<DriverAccount4> createState() => _DriverAccount4State();
}

class _DriverAccount4State extends State<DriverAccount4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          cairoBold(text: 'اين تريد العمل', color: Colors.black),
            SizedBox(height: 12,),
          SizedBox(height: 12,width: double.infinity,),
          CustomDropDownField(dropdownValue: 'المحافضة', options: ['المحافضة','بغداد','نجف'], title: "بغداد"),
          SizedBox(height: 12,),
          CustomDropDownField(dropdownValue: 'الكراج', options: ['الكراج','كراج العلاوي','كراج النجف'], title: "بغداد"),
          SizedBox(height: 49.h),
          orangeButton(text: 'أرسل طلب', onTap:(){Get.to(DriverAccount5());})
        ],),
      ),
    );
  }
}
