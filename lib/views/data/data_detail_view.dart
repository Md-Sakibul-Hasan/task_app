// View - Data Detail Screen UI
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/data_detail_controller.dart';
import '../../widgets/custom_app_bar.dart';

class DataDetailView extends StatelessWidget {
  const DataDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final DataDetailController controller = Get.find<DataDetailController>();

    return Scaffold(
      backgroundColor: const Color(0xFFE5F4FE),
      appBar: CustomAppBar(
        title: 'SCM',
        onNotificationPressed: () {
          Get.snackbar(
            'Notifications',
            'You have new notifications',
            snackPosition: SnackPosition.TOP,
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 42),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Obx(
                    () => controller.isDataView.value ? _buildDataViewContent(controller) : _buildRevenueViewContent(controller),
                  ),
                  Positioned(
                    top: -26,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFD1D5DB),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Obx(
                              () => InkWell(
                                onTap: () => controller.switchToDataView(),
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: controller.isDataView.value ? const Color(0xFF0096FC) : const Color(0xFF9CA3AF),
                                            width: 1,
                                          ),
                                        ),
                                        child: controller.isDataView.value
                                            ? Center(
                                                child: Container(
                                                  width: 12,
                                                  height: 12,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFF0096FC),
                                                  ),
                                                ),
                                              )
                                            : Center(
                                                child: Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFFA5A7B9),
                                                  ),
                                                ),
                                              ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Data View',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: controller.isDataView.value ? const Color(0xFF0096FC) : const Color(0xFF6B7280),
                                          fontSize: 15,
                                          fontWeight: controller.isDataView.value ? FontWeight.w600 : FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Obx(
                              () => InkWell(
                                onTap: () => controller.switchToRevenueView(),
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: !controller.isDataView.value ? const Color(0xFF0096FC) : const Color(0xFF9CA3AF),
                                            width: 1,
                                          ),
                                        ),
                                        child: !controller.isDataView.value
                                            ? Center(
                                                child: Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFF0096FC),
                                                  ),
                                                ),
                                              )
                                            : Center(
                                                child: Container(
                                                  width: 12,
                                                  height: 12,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFFA5A7B9),
                                                  ),
                                                ),
                                              ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Revenue View',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: !controller.isDataView.value ? const Color(0xFF0096FC) : const Color(0xFF6B7280),
                                          fontSize: 15,
                                          fontWeight: !controller.isDataView.value ? FontWeight.w600 : FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataViewContent(DataDetailController controller) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(Get.context!).size.height,
      ),
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFB6B8D0),
          width: 1,
        ),
      ),
    );
  }

  Widget _buildRevenueViewContent(DataDetailController controller) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(Get.context!).size.height,
      ),
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFB6B8D0),
          width: 1,
        ),
      ),
    );
  }

  Widget _buildDataRow({
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color.withOpacity(0.3), width: 1),
          ),
          child: Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRevenueCard({
    required String title,
    required String amount,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  amount,
                  style: TextStyle(
                    color: color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
