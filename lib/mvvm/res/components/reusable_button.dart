import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/res/colors/app_color.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton(
      {super.key,
      this.buttonColor = AppColor.primaryButtonColor,
      this.textColor = AppColor.primaryTextColor,
      this.loading = false,
      required this.height,
      required this.width,
      required this.title,
      required this.radius});

  final double height, width;
  final bool loading;
  final double radius;
  final String title;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text(title),
            ),
    );
  }
}
