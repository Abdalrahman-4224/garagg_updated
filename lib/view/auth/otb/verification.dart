import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/buttons.dart';
import 'package:untitled/view/auth/choose_account.dart';
import 'package:untitled/view/auth/constant/app_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/otb/otb_methods.dart';
class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int _remainingTime = 60; // Initial timer value in seconds
  late Timer _timer;

  List<TextEditingController> _controllers = List.generate(5, (index) => TextEditingController());
  List<FocusNode> _focusNodes = List.generate(5, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_remainingTime < 1) {
          _timer.cancel();
        } else {
          _remainingTime--;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool allFilled = _controllers.every((controller) => controller.text.isNotEmpty);

    return Scaffold(
      backgroundColor: Color(0xfffefcfa),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            cairoBold(text: 'تأكيد الحساب', color: Colors.black),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
              width: double.infinity,
            ),
            cairoBold(text: '07712074224', color: Colors.black),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: Text(
                'ادخل الرقم السري الذي تم ارساله على الرقم الخاص بك',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'cairo',
                    fontSize: 13.sp,
                    color: Color(0xff7B572D)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                5,
                    (index) => OTPBox(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  nextFocusNode: index < 4 ? _focusNodes[index + 1] : null,
                  isFilled: _controllers[index].text.isNotEmpty,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '00:$_remainingTime',
              style: TextStyle(
                fontSize: 28.0.sp,
                fontWeight: FontWeight.bold,
                color: _remainingTime > 0 ? Color(0xffFFAE48) : Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: double.infinity,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'لم يصلك رمز التأكيد بعد؟ ',
                      style: TextStyle(
                        fontFamily: 'cairo',
                        color: _remainingTime > 0 ? Colors.grey : Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: _remainingTime > 0 ? null : () => startTimer(),
                        child: Text(
                          'اعادة ارسال',
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 13.sp,
                            color: _remainingTime > 0 ? Colors.grey : Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            orangeButton(
              onTap: allFilled
                  ? () {
                Get.to(() => ChooseAccount());
              }
                  : () {
                Get.to(() => ChooseAccount());
              },
              text: 'تأكيد',
            ),
          ],
        ),
      ),
    );
  }
}
