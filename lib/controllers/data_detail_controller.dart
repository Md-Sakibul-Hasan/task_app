// Controller - Handles data detail screen logic
import 'package:get/get.dart';

class DataDetailController extends GetxController {
  // Observable state
  final RxBool isDataView = true.obs;
  final RxBool isTodayData = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // Switch to Data View
  void switchToDataView() {
    isDataView.value = true;
  }

  // Switch to Revenue View
  void switchToRevenueView() {
    isDataView.value = false;
  }

  // Switch to Today Data
  void switchToTodayData() {
    isTodayData.value = true;
  }

  // Switch to Custom Date Data
  void switchToCustomDate() {
    isTodayData.value = false;
  }
}
