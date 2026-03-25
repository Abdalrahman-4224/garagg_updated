import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/text.dart'; // Assuming cairoBold is defined here
import 'package:untitled/view/auth/constant/text_field.dart'; // Assuming PhoneNumberField is defined here
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import '../otb/verification.dart';
import 'package:untitled/view/auth/sign_up/sign_up.dart';
import 'widgets/alert.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  String _phoneNumber = '';

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  int isValidPhoneNumber(String value) {
    int index=0;
    for(var i=0;i<= value.length;i++){
      index++;
    }
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('assets/images/loginBackground.svg'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: cairoBold(text: 'تسجيل الدخول', color: Colors.black),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomPhoneNumberField(
                    controller: _phoneController,
                    onChanged: (value) {
                      setState(() {
                        _phoneNumber = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              orangeButton(
                text: "تسجيل الدخول",
                onTap: () {
                  print(_phoneController.text);
                  if (isValidPhoneNumber(_phoneController.text)>=11&&isValidPhoneNumber(_phoneController.text)<=16) {
                    Get.to(() => VerificationScreen());
                  } else {
                    AlertUtils.showCustomAlertDialog(context, 'الرقم الذي قمت بأدخاله خطأ! يرجى التحقق منه');
                  }
                },
              ),
              transparentButton(
                text: "انشاء حساب",
                onTap: () {
                  Get.to(() => const SignUp());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
