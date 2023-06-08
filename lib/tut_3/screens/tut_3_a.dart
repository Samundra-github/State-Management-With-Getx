import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/getx_controller.dart';
import 'package:get/get.dart';

class TutorialThreeA extends StatefulWidget {
  const TutorialThreeA({super.key});

  @override
  State<TutorialThreeA> createState() => _TutorialThreeAState();
}

class _TutorialThreeAState extends State<TutorialThreeA> {
  SwitchController switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("object");
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial Three"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 26),
                ),
                Obx(
                  () => Switch(
                    value: switchController.notifications.value,
                    onChanged: (value) {
                      switchController.setNotification(value);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
