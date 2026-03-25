import 'package:flutter/material.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/text_field.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/uploadingimage.dart';
import 'driver_account_2.dart';
class DriverAccount extends StatefulWidget {
  const DriverAccount({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DriverAccountState createState() => _DriverAccountState();
}

class _DriverAccountState extends State<DriverAccount> {// Initial value for dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(MyConstants.backGroundColor),
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cairoBold(text: 'انشاء حساب حائز', color: Colors.black),
              const SizedBox(
                height: 12,
              ),
              SvgPicture.asset('assets/icons/Indicator (1.2).svg'),
              const customTextField(
                  title: 'الاسم الثلاثي', imageName: 'assets/icons/User.svg'),
              const SizedBox(height: 12.0),
              const customTextField(
                  title: 'أسم الأم', imageName: 'assets/icons/User.svg'),
              const SizedBox(height: 12.0),
              const CustomDropDownField(title:'المحافضة',dropdownValue: 'بغداد',options: ['بغداد','نجف','كربلاء','ذيقار','بابل'],),
              const SizedBox(height: 12.0),
              const customTextField(
                  title: "المنطقة", imageName: 'assets/icons/MapPin.svg'),
              const SizedBox(height: 12.0),
              const customTextField(
                  title: "رقم الهوية", imageName: 'assets/icons/card.svg'),
              const SizedBox(height: 12.0),
              const customTextField(
                  title: "جهة الاصدار", imageName: 'assets/icons/building.svg'),
              const SizedBox(height: 12.0),
              const customTextField(
                  title: "تاريخ الأصدار",
                  imageName: 'assets/icons/calendar.svg'),
              const SizedBox(height: 12.0),
              UploadImageCard(context),
              const SizedBox(
                height: 12,
              ),
              orangeIconButton(
                  text: 'التالي',
                  onTap: () {
                    Get.to(()=>const DriverAccount2());

                  },
                  imageName: 'assets/icons/CaretLeft.svg'),
            ],
          ),
        ),
      ),
    );
  }


}
