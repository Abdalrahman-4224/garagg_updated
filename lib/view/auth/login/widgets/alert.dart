import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/view/auth/constant/text.dart';


import 'package:flutter/material.dart';
import 'package:untitled/view/auth/constant/text.dart'; // Assuming cairoBold is defined here

class AlertUtils {
  static void showCustomAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent, // Set background to transparent
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: context.width*0.7,
            height: context.height*0.089,
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the alert
              border: Border.all(color: Colors.red, width: 1.0), // Red border
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1), // Light red background
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: cairoRegular(text: message, color: Colors.black)),
                      const SizedBox(width: 8.0),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                          height:context.height*0.06,
                        width: context.width*0.06,
                        child: const Center(child: Text('!',style: TextStyle(color: Colors.white),)),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
