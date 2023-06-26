import 'package:get/get.dart';

class CartController extends GetxController {
  var cartCounter = 0.obs;

  increaseValue() {
    cartCounter.value++;
  }

  decreaseValue() {
    cartCounter.value--;
  }
}
