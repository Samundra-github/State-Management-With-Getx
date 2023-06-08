import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

// Using Integer
class CounterController extends GetxController {
  RxInt counter = 0.obs;

  incrementCounter() {
    counter.value++;
    if (kDebugMode) {
      print(counter.value);
    }
  }
}

// Using Double
class SliderController extends GetxController {
  RxDouble opacity = .1.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}

// Using Bool
class SwitchController extends GetxController {
  RxBool notifications = false.obs;

  setNotification(bool value) {
    notifications.value = value;
  }
}

// Using List
class FavoritesController extends GetxController {
  RxList<String> clubList = [
    'Manchester United',
    'Manchester City',
    'Chelsea',
    'Liverpool',
    'Arsenal',
    'Tottenham Hotspur'
  ].obs;
  RxList favoriteClub = [].obs;

  addToFavorite(String value) {
    favoriteClub.add(value);
  }

  removeFromFavorite(String value) {
    favoriteClub.remove(value);
  }
}

// Using for Image Picker
class ImagePickerController extends GetxController {
  RxString imagePath = ''.obs;

  Future getImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }

  Future getImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}

// Login Controller
class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      if (kDebugMode) {
        print(response.statusCode);
      }
      if (kDebugMode) {
        print(data);
      }

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'Login SuccessFul');
      } else {
        Get.snackbar('Failure', 'Login Failure');
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}
