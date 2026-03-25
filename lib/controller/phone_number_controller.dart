// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class PhoneNumberController extends GetxController {
//   final phoneNumber = TextEditingController();
//
//   void submitPhoneNumber(String phoneNumber) async {
//     // Implement API call logic here
//     // Replace with your actual API call and error handling
//     try {
//       final response = await  /* Make API call with phoneNumber */;
//       if (response.statusCode == 200) {
//         Get.snackbar(
//           "Success",
//           "Phone number submitted successfully!",
//           snackPosition: SnackPosition.BOTTOM,
//         );
//       } else {
//         Get.snackbar(
//           "Error",
//           "Failed to submit phone number. Please try again.",
//           snackPosition: SnackPosition.BOTTOM,
//         );
//       }
//     } catch (error) {
//       Get.snackbar(
//         "Error",
//         "An unexpected error occurred: $error",
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     }
//   }
// }