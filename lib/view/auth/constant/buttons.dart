import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/view/auth/constant/const_var.dart';
import 'package:untitled/view/auth/choose_account.dart';
import 'package:untitled/controller/choosing_account_controller.dart';
class orangeButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const orangeButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: Color(0xffFFAE48),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2, color: Color(0xffFFAE48)),
        ),
        width: MediaQuery.of(context).size.width *
            0.9, // Make the container transparent
        child: GestureDetector(
          child: Center(child: cairoRegular(text: text, color: Colors.white)),
          onTap: onTap,
        ),
      ),
    );
  }
}

class orangeIconButton extends StatelessWidget {
  final String text, imageName;
  final VoidCallback onTap;

  const orangeIconButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        color: Color(0xffFFAE48),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 2, color: Color(0xffFFAE48)),
      ),
      width: MediaQuery.of(context).size.width *
          0.9, // Make the container transparent

      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imageName),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Center(child: cairoRegular(text: text, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class transparentButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const transparentButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,

        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff857463), width: 2)),
        width: MediaQuery.of(context).size.width *
            0.9, // Make the container transparent
        child: GestureDetector(
          child:
              Center(child: cairoRegular(text: text, color: Color(0xff857463))),
          onTap: onTap,
        ),
      ),
    );
  }
}

// Widget circleCheckbox(bool isChecked, Color checkColor, Color borderColor) {
//   return Container(
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       border: Border.all(color: borderColor, width: 2.0),
//     ),
//     child: Checkbox(
//       value: isChecked,
//       onChanged: (value) => setState(() => isChecked = value!), // Update state
//       activeColor: checkColor, // Set checkmark color
//     ),
//   );
// }

// Import the controller

class OptionCard extends StatelessWidget {
  final String headingtext, bodytext;
  final AccountType value;
  final AccountType groupValue;
  final void Function(AccountType?) onChanged;

  const OptionCard({
    super.key,
    required this.headingtext,
    required this.bodytext,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: Transform.scale(
                      scale: 1.5, // Adjust this value to change the size
                      child: Radio<AccountType>(
                        value: value,
                        groupValue: groupValue,
                        onChanged: onChanged,
                        activeColor: Color(0xFFFFAE48), // Use your desired color
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0), // Add space between checkbox and text
                  cairoBold(text: headingtext, color: Colors.black),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: cairoRegular(text: bodytext, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}