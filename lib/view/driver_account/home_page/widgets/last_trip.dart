import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/controller/driver_home_page_controller.dart';
import 'package:get/get.dart';

class LastTripCard extends StatelessWidget {
  const LastTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('assets/icons/routing-2.svg'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('من', style: TextStyle(fontSize: 10.sp, color: Color(0xff857463))),
                  Text('كراج العلاوي', style: TextStyle(fontSize: 10.sp, color: Colors.black, fontFamily: 'cairo')),
                ],
              ),
              Container(width: 1, height: 28.sp, color: Color(0xffD8C3AF)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('الى', style: TextStyle(fontSize: 10.sp, color: Color(0xff857463))),
                  Text('كراج التحرير', style: TextStyle(fontSize: 10.sp, color: Colors.black, fontFamily: 'cairo')),
                ],
              ),
              Column(
                children: [
                  Text('السعر الكلي', style: TextStyle(fontSize: 10.sp, color: Color(0xff857463))),
                  Text('6,500 د.ع.', style: TextStyle(fontSize: 10.sp, color: Colors.black, fontFamily: 'cairo', fontWeight: FontWeight.w600)),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('assets/icons/CaretLeft.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LastTripColumn extends StatelessWidget {
  const LastTripColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => ListView.builder(
        padding: const EdgeInsets.only(bottom: 8),
        itemCount: 6,
        itemBuilder: (_, __) => const LastTripCard(),
      ),
    );
  }
}