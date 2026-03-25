import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OTPBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final bool isFilled;

  const OTPBox({super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.155,
      height: MediaQuery.of(context).size.height * 0.085,
      decoration: BoxDecoration(
        border: Border.all(
          color: isFilled ? Color(0xffFFAE48) : Colors.transparent,
          width: 2.0,
        ),
        color: isFilled ? Colors.white : Color(0xffFAEBDF),
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        cursorColor: Color(0xffffae48),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          if (value.isNotEmpty) {
            focusNode.unfocus();
            if (nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            }
          }
        },
        decoration: const InputDecoration(
          counterText: '',
          counterStyle: TextStyle(fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontFamily: 'cairo',
          fontSize: 28.0.sp,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
    );
  }
}
