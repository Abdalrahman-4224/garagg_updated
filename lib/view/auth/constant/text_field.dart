import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/text.dart';
import 'package:untitled/view/auth/constant/const_var.dart';

class CustomPhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;

  CustomPhoneNumberField({
    required this.controller,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0), // Adjust padding to align the icon
              child: SvgPicture.asset(
                'assets/icons/phone.svg',
                colorFilter: ColorFilter.mode(Color(0xffD8C3AF), BlendMode.srcIn),
              ),
            ),
            labelText: 'رقم الهاتف',
            labelStyle: TextStyle(
              color: Color(0xffD8C3AF),
              fontFamily: 'cairo',
              fontSize: 13.sp,
            ),
            floatingLabelStyle: TextStyle(color: Color(0xff332E28)),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xffD8C3AF), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xff332E28), width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}


class customTextField extends StatelessWidget {
  final String title;
  final String imageName;
  final TextInputType? inputtype;
  const customTextField({
    required this.title,
    required this.imageName,
    this.inputtype,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          keyboardType: inputtype,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(
                  12.0), // Adjust padding to align the icon
              child: SvgPicture.asset(imageName!,
                  colorFilter:
                      ColorFilter.mode(Color(0xffD8C3AF), BlendMode.srcIn)),
            ),
            labelText: title, // Add your label text here
            labelStyle: TextStyle(
                color: Color(0xffD8C3AF),
                fontFamily: 'cairo',
                fontSize: 13.sp // Set the color of the label
                ),
            floatingLabelStyle: TextStyle(color: Color(0xff332E28)),
            floatingLabelBehavior:
                FloatingLabelBehavior.auto, // This makes the label float
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xffD8C3AF), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xff332E28), width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}





class CustomDropDownField extends StatefulWidget {
  final String dropdownValue;
  final List<String> options;
  final String title;

  const CustomDropDownField({
    required this.dropdownValue,
    required this.options,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropDownField> createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  late String currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.dropdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xffD8C3AF),
          width: 2.0,
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            disabledHint: Text(widget.title),
            hint:Text(widget.title),
            value: currentValue,
            onChanged: (String? newValue) {
              setState(() {
                currentValue = newValue!;
              });
            },
            items: widget.options
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: cairoRegular(text: value, color: Color(MyConstants.lightBroune))
              );
            }).toList(),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color(MyConstants.lightBroune),
            ),
            isExpanded: true,
            dropdownColor: Colors.white,
          ),
        ),
      ),
    );
  }
}


class CustomShortDropDownField extends StatefulWidget {
  final String dropdownValue;
  final List<String> options;
  final String title;

  const CustomShortDropDownField({
    required this.dropdownValue,
    required this.options,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomShortDropDownField> createState() => _CustomShortDropDownFieldState();
}

class _CustomShortDropDownFieldState extends State<CustomShortDropDownField> {
  late String currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.dropdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xffD8C3AF),
          width: 2.0,
        ),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            disabledHint: Text(widget.title),
            hint:Text(widget.title),
            value: currentValue,
            onChanged: (String? newValue) {
              setState(() {
                currentValue = newValue!;
              });
            },
            items: widget.options
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: cairoRegular(text: value, color: Color(MyConstants.lightBroune))
              );
            }).toList(),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color(MyConstants.lightBroune),
            ),
            isExpanded: true,
            dropdownColor: Colors.white,
          ),
        ),
      ),
    );
  }
}


class customizableTextField extends StatelessWidget {
  final String title;
  final String imageName;
  final TextInputType? inputtype;
  final double width;
  final double height;
  const customizableTextField({
    required this.title,
    required this.imageName,
    this.inputtype,
    required this.width,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: width,
        height: height,
        child: TextField(
          keyboardType: inputtype,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(
                  12.0), // Adjust padding to align the icon
              child: SvgPicture.asset(imageName!,
                  colorFilter:
                  ColorFilter.mode(Color(0xffD8C3AF), BlendMode.srcIn)),
            ),
            labelText: title, // Add your label text here
            labelStyle: TextStyle(
                color: Color(0xffD8C3AF),
                fontFamily: 'cairo',
                fontSize: 13.sp // Set the color of the label
            ),
            floatingLabelStyle: TextStyle(color: Color(0xff332E28)),
            floatingLabelBehavior:
            FloatingLabelBehavior.auto, // This makes the label float
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xffD8C3AF), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Color(0xff332E28), width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}
