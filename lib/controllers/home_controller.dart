// Controller - Handles home screen logic
import 'package:get/get.dart';
import '../models/data_item_model.dart';
import '../models/menu_item_model.dart';
import '../views/menu/menu_detail_view.dart';

class HomeController extends GetxController {
  // Observable state
  final RxBool hasNotifications = true.obs;
  final RxList<DataItemModel> dataItems = <DataItemModel>[].obs;
  final RxList<MenuItemModel> menuItems = <MenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Load sample data
    dataItems.value = DataItemModel.getSampleData();
    menuItems.value = MenuItemModel.getSampleData();
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

  // Handle menu item tap
  void onMenuItemTap(MenuItemModel item) {
    Get.to(() => MenuDetailView(title: item.title));
  }
}
