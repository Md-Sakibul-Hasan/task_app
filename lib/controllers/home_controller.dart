// Controller - Handles home screen logic
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Observable state
  final RxBool hasNotifications = true.obs;

  // Handle back button press
  void onBackPressed() {
    Get.back();
  }

  // Handle notification press
  void onNotificationPressed() {
    Get.snackbar(
      'Notifications',
      'You have new notifications',
      snackPosition: SnackPosition.TOP,
    );
    // TODO: Navigate to notifications screen
  }

  // Clear notifications badge
  void clearNotifications() {
    hasNotifications.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    // Load initial data
  }

  @override
  void onClose() {
    super.onClose();
  }
}
