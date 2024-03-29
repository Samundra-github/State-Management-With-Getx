import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/getx_controller.dart';
// import 'package:get/get.dart';

class TutorialTwoA extends StatefulWidget {
  const TutorialTwoA({super.key});

  @override
  State<TutorialTwoA> createState() => _TutorialTwoAState();
}

class _TutorialTwoAState extends State<TutorialTwoA> {
  @override
  void initState() {
    super.initState();
  }

  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("State Management");
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        title: const Text("GetX State Management"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => Text(
                controller.counter.toString(),
                style: const TextStyle(fontSize: 60),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementCounter();
      }),
    );
  }
}
