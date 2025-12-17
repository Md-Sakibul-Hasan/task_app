// Controller - Handles data detail screen logic
import 'package:get/get.dart';

class DataDetailController extends GetxController {
  // Observable state
  final RxBool isDataView = true.obs;
  final RxBool isTodayData = true.obs;
  final RxBool isCustomDateSearched = false.obs;

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
    isCustomDateSearched.value = false;
  }

  // Switch to Custom Date Data
  void switchToCustomDate() {
    isTodayData.value = false;
    isCustomDateSearched.value = false;
  }

  // Handle custom date search
  void searchCustomDateData() {
    if (!isTodayData.value) {
      isCustomDateSearched.value = true;
    }
  }
}
