import 'package:flutter/material.dart';
import 'package:flutter_application_1/mvvm/res/colors/app_color.dart';
import 'package:flutter_application_1/mvvm/res/components/reusable_button.dart';
import 'package:get/get.dart';

class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
              'internet_exception'.tr,
              textAlign: TextAlign.center,
            )),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: widget.onPress,
            child: const ReusableButton(
              height: 44,
              width: 110,
              title: 'Try Again',
              radius: 50,
            ),
          )
        ],
      ),
    );
  }
}
