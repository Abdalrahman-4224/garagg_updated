import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/driver_home_page_controller.dart';

class FanincialExchangeCard extends StatelessWidget {
  const FanincialExchangeCard({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/fanincialExchange.svg'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تم شحن البطاقة',
                    style: TextStyle(fontFamily: 'cairo', fontSize: 12, color: Colors.black),
                  ),
                  Text(
                    '24/2/2024',
                    style: TextStyle(fontFamily: 'cairo', fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                '25,000 د. ع.',
                style: TextStyle(
                  fontFamily: 'cairo',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FanincialExchangeColumn extends StatelessWidget {
  const FanincialExchangeColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => ListView.builder(
        padding: const EdgeInsets.only(bottom: 8),
        itemCount: 6,
        itemBuilder: (_, __) => const FanincialExchangeCard(),
      ),
    );
  }
}
