import 'package:flutter/material.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/driver_account/generalwidget/driver_appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/view/driver_account/generalwidget/fanincial_exchange.dart';
import 'package:untitled/view/driver_account/generalwidget/navigatin_bar.dart';
import '../../auth/constant/text.dart';
import 'package:get/get.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(MyConstants.backGroundColor),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: context.width * 0.12,
                  height: context.width * 0.12,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset('assets/icons/Bell.svg'),
                    ),
                  ),
                ),
                Container(
                  width: context.width * 0.12,
                  height: context.width * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: const Color(0xffF5DFCA)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: ClipOval(
                      child: Image.asset('assets/images/user.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: context.width * 0.9,
              decoration: BoxDecoration(
                  color: Color(0xfffFDDBA),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cairoRegular(
                                text: 'رقم البطاقه :',
                                color: const Color(0xff857463)),
                            const SizedBox(
                              height: 12,
                            ),
                            cairoRegular(
                                text: 'رصيد البطاقة:',
                                color: const Color(0xff857463)),
                            Text(
                              '125,000 IQD ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'دوج جارجر',
                                        style: TextStyle(
                                            fontFamily: 'cairo',
                                            color: Colors.black,
                                            fontSize: 12),
                                      ),
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      '٣٢٤٤٦أ / بغداد',
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          color: Colors.black,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0.sp),
                                child: Text(
                                  'انتهاء الصلاحية :2025/12/10',
                                  style: TextStyle(
                                      fontFamily: 'cairo',
                                      color: Colors.black,
                                      fontSize: 12.sp),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                height: context.height * 0.05,
                                width: context.width * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.sp)),
                                child: Padding(
                                  padding: EdgeInsets.all(7.0.sp),
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        'assets/icons/scan-barcode.svg',
                                      )),
                                )),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.all(20.sp),
              child: SizedBox(
                width: context.width * 0.9,
                child: Row(
                  children: [
                    Text(
                      "اخر التحويلات المالية",
                      style: TextStyle(fontFamily: 'cairo', fontSize: 20.sp),
                    ),
                    SizedBox(
                      width: 40.sp,
                    ),
                    Column(
                      children: [
                        const Text(
                          'رؤية الجميع',
                          style: TextStyle(
                            color: Color(MyConstants.MyOrange),
                          ),
                        ),
                        Container(
                          width: 50.sp,
                          height: 1,
                          color: Color(MyConstants.MyOrange),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: FanincialExchangeColumn(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: orangeIconButton(
              text: 'تعبئة البطاقة',
              onTap: () {},
              imageName: 'assets/icons/Card Charge.svg',
            ),
          ),
          
        ]),
      ),
    );
  }
}
