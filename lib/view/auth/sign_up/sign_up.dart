import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/text.dart'; // Assuming cairoBold is defined here
import 'package:untitled/view/auth/constant/text_field.dart'; // Assuming PhoneNumberField is defined here
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import '../otb/verification.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _phoneController = TextEditingController();
  String _phoneNumber='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset('assets/images/mapBackground.svg'),
            Column(
              children: [
                SvgPicture.asset('assets/images/signUpBackground.svg'),
                SizedBox(
                  width: context.width * 0.9,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: cairoBold(text: 'انشاء حساب', color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: CustomPhoneNumberField(
                    controller: _phoneController,
                    onChanged: (value) {
                      setState(() {
                        _phoneNumber = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                orangeIconButton(
                    text: 'التالي',
                    onTap: () {
                      Get.to(VerificationScreen());
                    },
                    imageName: 'assets/icons/CaretLeft.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
