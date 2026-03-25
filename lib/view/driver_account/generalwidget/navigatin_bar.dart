import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
// import '../mapscreen/map_screen.dart'; // Not yet implemented
import '../home_page/driver-homepage.dart';
import '../cardscreen/card_screen.dart';
import 'package:untitled/controller/navigation_controller.dart';
import 'package:sizer/sizer.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});

  final List<Widget> screens = [
    const Scaffold(body: Center(child: Text('قريباً — خط السير'))), // index 0 — الخط
    const CardScreen(),  // index 1 — البطاقة
    DriverHomePage(),    // index 2 — الرئيسية
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomNavigationController>(
      init: CustomNavigationController(),
      builder: (controller) => Scaffold(
        // Body driven entirely by the controller — no more desync
        body: screens[controller.selectedIndex.value],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 12,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          height: context.height * 0.09,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              _buildNavItem(controller, 0, 'assets/icons/routing.svg', 'الخط'),
              _buildNavItem(controller, 1, 'assets/icons/card.svg', 'البطاقة'),
              _buildNavItem(controller, 2, 'assets/icons/home.svg', 'الرئيسية'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      CustomNavigationController controller, int index, String assetName, String tooltip) {
    return BottomNavigationBarItem(
      icon: Obx(() {
        final bool isSelected = controller.selectedIndex.value == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          width: isSelected ? 20.w : 18.w,
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isSelected
                ? Border.all(color: const Color(0xffffca88), width: 4.0)
                : null,
            color: isSelected ? Color(MyConstants.MyOrange) : Colors.transparent,
          ),
          child: Tooltip(
            message: tooltip,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    assetName,
                    colorFilter: isSelected
                        ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                        : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  ),
                  if (!isSelected)
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        tooltip,
                        style: TextStyle(
                          fontSize: 7.sp,
                          color: Colors.grey,
                          fontFamily: 'cairo',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      }),
      label: '',
    );
  }
}