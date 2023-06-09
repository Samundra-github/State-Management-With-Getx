import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorialOneA extends StatefulWidget {
  const TutorialOneA({super.key});

  @override
  State<TutorialOneA> createState() => _TutorialOneAState();
}

class _TutorialOneAState extends State<TutorialOneA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        title: const Text("Tutorial One A"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text("Go back to Home"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Get.toNamed('/tut_one_b');
              },
              child: const Text("Go to Next Page"),
            ),
          ),
        ],
      ),
    );
  }
}
