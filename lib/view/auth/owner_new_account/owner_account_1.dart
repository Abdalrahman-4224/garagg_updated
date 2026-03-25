import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/text_field.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'owner_account_2.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/uploadingimage.dart';

class CreateAccount_1 extends StatefulWidget {
  @override
  _CreateAccount_1State createState() => _CreateAccount_1State();
}

class _CreateAccount_1State extends State<CreateAccount_1> {
  String dropdownValue = 'المحافضة'; // Initial value for dropdown

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
              cairoBold(text: 'انشاء حساب مالك', color: Colors.black),
              SizedBox(
                height: 12,
              ),
              SvgPicture.asset('assets/icons/Indicator (1).svg'),
              customTextField(
                  title: 'الاسم الثلاثي', imageName: 'assets/icons/User.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: 'أسم الأم', imageName: 'assets/icons/User.svg'),
              SizedBox(height: 12.0),
              CustomDropDownField(title:'المحافضة',dropdownValue: 'بغداد',options: ['بغداد','نجف','كربلاء','ذيقار','بابل'],),
              SizedBox(height: 12.0),
              customTextField(
                  title: "المنطقة", imageName: 'assets/icons/MapPin.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: "رقم الهوية", imageName: 'assets/icons/card.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: "جهة الاصدار", imageName: 'assets/icons/building.svg'),
              SizedBox(height: 12.0),
              customTextField(
                  title: "تاريخ الأصدار",
                  imageName: 'assets/icons/calendar.svg'),
              SizedBox(height: 12.0),
              UploadImageCard(context),
              SizedBox(
                height: 12,
              ),
              orangeIconButton(
                  text: 'التالي',
                  onTap: () {
                    Get.to(() => OwnerAccount2());
                  },
                  imageName: 'assets/icons/CaretLeft.svg'),
            ],
          ),
        ),
      ),
    );
  }


}
