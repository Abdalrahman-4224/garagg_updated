import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:get/get.dart';
import '../owner_new_account/congrars.dart';

class DriverAccount5 extends StatefulWidget {
  const DriverAccount5({Key? key}) : super(key: key);

  @override
  State<DriverAccount5> createState() => _DriverAccount5State();
}

class _DriverAccount5State extends State<DriverAccount5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset('assets/icons/Indicator (3.3).svg'),
            const SizedBox(height: 12),
            SvgPicture.asset('assets/icons/BarCode.svg'),
            const SizedBox(height: 12),
            Text(
              'تم ارسال الطلب قم بانتضار المالك لأضافتك',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 26.sp,
                color: const Color(0xff7B572D),
              ),
            ),
            SizedBox(height: 19.h),
            orangeIconButton(
              text: "استمرار",
              onTap: () {
                Get.offAll(() => const Congrats());
              },
              imageName: 'assets/icons/MagnifyingGlass.svg',
            ),
          ],
        ),
      ),
    );
  }
}
