import 'package:get/get.dart';

class NotificationController extends GetxController {
  var notificationCounter = 0.obs;

  increaseValue() {
    notificationCounter.value++;
  }

  decreaseValue() {
    notificationCounter.value--;
  }
}
