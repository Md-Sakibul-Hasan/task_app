// Controller - Handles home screen logic
import 'package:get/get.dart';
import '../models/data_item_model.dart';

class HomeController extends GetxController {
  // Observable state
  final RxBool hasNotifications = true.obs;
  final RxList<DataItemModel> dataItems = <DataItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Load sample data
    dataItems.value = DataItemModel.getSampleData();
  }

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

  // Handle data item tap
  void onDataItemTap(DataItemModel item) {
    Get.snackbar(
      item.title,
      'Status: ${item.statusText}',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
