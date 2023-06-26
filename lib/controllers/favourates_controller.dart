import 'package:get/get.dart';

class FavourateController extends GetxController {
  var favCounter = 0.obs;

  increaseValue() {
    favCounter.value++;
  }

  decreaseValue() {
    favCounter.value--;
  }
}
