import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/res/colors/app_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils {
  // Field Focus
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  // Toast Message
  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.whiteColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  // Snackbar
  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
    );
  }
}
