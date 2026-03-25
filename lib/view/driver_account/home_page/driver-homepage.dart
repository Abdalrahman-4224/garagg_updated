import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/driver_account/generalwidget/fanincial_exchange.dart';
import 'package:untitled/view/driver_account/home_page/widgets/last_trip.dart';
import 'widgets/toggle_button.dart';
import 'package:untitled/controller/driver_home_page_controller.dart';
import 'package:untitled/view/auth/constant/const_var.dart';

class DriverHomePage extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyConstants.backGroundColor),
      body: SafeArea(
        child: Column(
          children: [
            // ── App Bar ──────────────────────────────────────────────
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset('assets/icons/Bell.svg'),
                      ),
                      onTap: () {},
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
                      child: ClipOval(
                        child: Image.asset('assets/images/user.png', fit: BoxFit.cover),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),

            // ── Card Banner ──────────────────────────────────────────
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 10),
                child: Stack(children: [
                  SvgPicture.asset('assets/images/Subtract.svg',
                      width: context.width - 28, fit: BoxFit.fitWidth),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 18, top: 14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cairoRegular(text: 'رقم البطاقه :', color: const Color(0xff857463)),
                            const SizedBox(height: 10),
                            cairoRegular(text: 'رصيد البطاقة:', color: const Color(0xff857463)),
                            Text(
                              '125,000 IQD',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18.sp,
                                fontFamily: 'cairo',
                              ),
                            ),
                            SizedBox(height: 10.sp),
                            Row(
                              children: [
                                _chipLabel('دوج جارجر'),
                                const SizedBox(width: 8),
                                _chipLabel('٣٢٤٤٦أ / بغداد'),
                              ],
                            ),
                            const SizedBox(height: 6),
                            _chipLabel('انتهاء الصلاحية: 2025/12/10'),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: context.height * 0.05,
                              width: context.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset('assets/icons/scan-barcode.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Orange QR/pay button
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 56,
                        width: 56,
                        decoration: const BoxDecoration(
                          color: Color(MyConstants.MyOrange),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset('assets/icons/Vector.svg'),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),

            // ── Stats Row ────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _statCard(
                    context,
                    title: 'الغرامات المالية',
                    value: '20',
                    unit: 'غرامة مالية',
                    svgPath: 'assets/images/Union2.svg',
                    align: Alignment.topLeft,
                  ),
                  const SizedBox(width: 12),
                  _statCard(
                    context,
                    title: 'عدد الرحلات',
                    value: '5',
                    unit: 'رحلة',
                    svgPath: 'assets/images/Union.svg',
                    align: Alignment.centerLeft,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // ── Toggle + Content ─────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: ToggleButton(
                activeTextColor: Colors.white,
                width: context.width * 0.85,
                height: context.height * 0.045,
                toggleBackgroundColor: Colors.white,
                toggleBorderColor: Colors.white,
                toggleColor: Color(MyConstants.MyOrange),
                inactiveTextColor: Color(0xff857463),
                leftDescription: 'التحويلات المالية',
                rightDescription: 'اخر الرحلات',
                onLeftToggleActive: _controller.handleLeftToggle,
                onRightToggleActive: _controller.handleRightToggle,
              ),
            ),

            const SizedBox(height: 8),

            // ── Scrollable list based on toggle ─────────────────────
            Expanded(
              child: Obx(() => _controller.isLeftActive.value
                  ? const FanincialExchangeColumn()
                  : const LastTripColumn()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chipLabel(String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Text(
          text,
          style: const TextStyle(fontFamily: 'cairo', color: Colors.black, fontSize: 11),
        ),
      ),
    );
  }

  Widget _statCard(
    BuildContext context, {
    required String title,
    required String value,
    required String unit,
    required String svgPath,
    required Alignment align,
  }) {
    return Expanded(
      child: Stack(children: [
        Container(
          height: 110.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.sp),
            color: const Color(0xffFFF1E6),
          ),
          child: Align(
            alignment: align,
            child: SvgPicture.asset(svgPath, height: 80.sp, width: 60.sp),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                cairoRegular(text: title, color: Colors.black),
                const Spacer(),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text(
                        value,
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 4),
                      Text(unit, style: TextStyle(fontSize: 9.sp, fontFamily: 'cairo')),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 28.sp,
                          width: 28.sp,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset('assets/icons/Vector2.svg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
