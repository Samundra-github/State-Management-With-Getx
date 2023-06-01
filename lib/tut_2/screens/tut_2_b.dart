import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/getx_controller.dart';
import 'package:get/get.dart';

class TuttorialTwoB extends StatefulWidget {
  const TuttorialTwoB({super.key});

  @override
  State<TuttorialTwoB> createState() => _TuttorialTwoBState();
}

class _TuttorialTwoBState extends State<TuttorialTwoB> {
  // double opacity = 0.1;
  SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Slider Rebuild");
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Widget Builder"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: Get.height * .4,
                width: Get.width * 1,
                color: Colors.blue.withOpacity(sliderController.opacity.value),
              ),
            ),
          ),
          Obx(
            () => Slider(
              value: sliderController.opacity.value,
              onChanged: (value) {
                sliderController.setOpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
