import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/controller/choosing_account_controller.dart';
import 'owner_new_account/owner_account_1.dart';
import 'driver_new_account/driver_account.dart';
import 'package:untitled/controller/phone_number_controller.dart'; // Import the controller

class ChooseAccount extends StatelessWidget {
  final ChooseAccountController controller = Get.put(ChooseAccountController());

  ChooseAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset('assets/icons/custombackrow.svg'),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xfffefcfa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cairoBold(text: 'اختر نوع الحساب', color: Colors.black),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
                width: double.infinity,
              ),
              Obx(() => OptionCard(
                headingtext: 'مالك',
                bodytext: 'لديك سيارة و ترغب ان تكون سائق او لديك سيارة و ترغب في توظيف سائق لها',
                value: AccountType.owner,
                groupValue: controller.selectedAccountType.value,
                onChanged: (value) {
                  controller.setSelectedAccountType(value);
                },
              )),
              Obx(() => OptionCard(
                headingtext: 'حائز',
                bodytext: 'ليس لديك سيارة و لكنك ترغب ان تكون سائق',
                value: AccountType.driver,
                groupValue: controller.selectedAccountType.value,
                onChanged: (value) {
                  controller.setSelectedAccountType(value);
                },
              )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              orangeIconButton(
                text: 'التالي',
                onTap: () {
                  if (controller.selectedAccountType.value == AccountType.owner) {
                    Get.to(() => CreateAccount_1());
                  } else if (controller.selectedAccountType.value == AccountType.driver) {
                    Get.to(() => const DriverAccount());
                  } else {
                    Get.snackbar(
                      'تنبيه',
                      'الرجاء اختيار نوع الحساب',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.orange.withOpacity(0.9),
                      colorText: Colors.white,

                    );
                  }
                },
                imageName: 'assets/icons/CaretLeft.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

