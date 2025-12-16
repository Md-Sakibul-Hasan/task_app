// Controller - Handles home screen logic
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Observable state
  final RxBool hasNotifications = true.obs;

  // Handle notification press
  void onNotificationPressed() {
    Get.snackbar(
      'Notifications',
      'You have new notifications',
      snackPosition: SnackPosition.TOP,
    );
  }

  // Clear notifications badge
  void clearNotifications() {
    hasNotifications.value = false;
  }
}
