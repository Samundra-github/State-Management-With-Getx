import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
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
}
