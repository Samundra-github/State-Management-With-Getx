import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  incrementCounter() {
    counter.value++;
    if (kDebugMode) {
      print(counter.value);
    }
  }
}

class SliderController extends GetxController {
  RxDouble opacity = .1.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}
