// View - Data Detail Screen UI
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/data_detail_controller.dart';
import '../../widgets/circular_meter_widget.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/energy_chart_widget.dart';

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
                    () => controller.isDataView.value
                        ? _buildDataViewContent(controller)
                        : _buildRevenueViewContent(controller),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 16),
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
                                            color: controller.isDataView.value
                                                ? const Color(0xFF0096FC)
                                                : const Color(0xFF9CA3AF),
                                            width: 1,
                                          ),
                                        ),
                                        child: controller.isDataView.value
                                            ? Center(
                                                child: Container(
                                                  width: 12,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFF0096FC),
                                                  ),
                                                ),
                                              )
                                            : Center(
                                                child: Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration:
                                                      const BoxDecoration(
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
                                          color: controller.isDataView.value
                                              ? const Color(0xFF0096FC)
                                              : const Color(0xFF6B7280),
                                          fontSize: 15,
                                          fontWeight:
                                              controller.isDataView.value
                                                  ? FontWeight.w600
                                                  : FontWeight.w500,
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 16),
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
                                            color: !controller.isDataView.value
                                                ? const Color(0xFF0096FC)
                                                : const Color(0xFF9CA3AF),
                                            width: 1,
                                          ),
                                        ),
                                        child: !controller.isDataView.value
                                            ? Center(
                                                child: Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFF0096FC),
                                                  ),
                                                ),
                                              )
                                            : Center(
                                                child: Container(
                                                  width: 12,
                                                  height: 12,
                                                  decoration:
                                                      const BoxDecoration(
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
                                          color: !controller.isDataView.value
                                              ? const Color(0xFF0096FC)
                                              : const Color(0xFF6B7280),
                                          fontSize: 15,
                                          fontWeight:
                                              !controller.isDataView.value
                                                  ? FontWeight.w600
                                                  : FontWeight.w500,
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
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFB6B8D0),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Progress Meter
          Obx(
            () => controller.isTodayData.value
                ? const CircularMeterWidget(
                    progress: 0.65,
                    value: '55.00',
                    unit: 'kWh/Sqft',
                    width: 200,
                    height: 200,
                    backgroundColor: Color(0xFFE0F2FF),
                    progressColor: Color(0xFF4E91FD),
                    strokeWidth: 16,
                    valueFontSize: 20,
                    unitFontSize: 14,
                    valueColor: Colors.black,
                    unitColor: Colors.black,
                    valueFontWeight: FontWeight.bold,
                    unitFontWeight: FontWeight.w500,
                  )
                : const CircularMeterWidget(
                    progress: 0.67,
                    value: '57.00',
                    unit: 'kWh/Sqft',
                    width: 200,
                    height: 200,
                    backgroundColor: Color(0xFFE0F2FF),
                    progressColor: Color(0xFF4E91FD),
                    strokeWidth: 16,
                    valueFontSize: 20,
                    unitFontSize: 14,
                    valueColor: Colors.black,
                    unitColor: Colors.black,
                    valueFontWeight: FontWeight.bold,
                    unitFontWeight: FontWeight.w500,
                  ),
          ),
          const SizedBox(height: 30),
          // Toggle buttons - Today Data / Custom Date Data
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Today Data button
              Obx(
                () => CustomRadioButton(
                  label: 'Today Data',
                  isSelected: controller.isTodayData.value,
                  onTap: () => controller.switchToTodayData(),
                ),
              ),
              const SizedBox(width: 24),
              // Custom Date Data button
              Obx(
                () => CustomRadioButton(
                  label: 'Custom Date Data',
                  isSelected: !controller.isTodayData.value,
                  onTap: () => controller.switchToCustomDate(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Energy Chart Section
          EnergyChartWidget(
            totalEnergy: '5.53 kW',
            dataItems: const [
              EnergyDataItem(
                label: 'Data A',
                color: Color(0xFF3B82F6),
                data: '2798.50',
                percentage: '29.53%',
                cost: '35689',
              ),
              EnergyDataItem(
                label: 'Data B',
                color: Color(0xFF06B6D4),
                data: '72598.50',
                percentage: '35.39%',
                cost: '5259689',
              ),
              EnergyDataItem(
                label: 'Data C',
                color: Color(0xFF8B5CF6),
                data: '6598.36',
                percentage: '83.90%',
                cost: '5698756',
              ),
              EnergyDataItem(
                label: 'Data D',
                color: Color(0xFFF59E0B),
                data: '6598.26',
                percentage: '36.59%',
                cost: '356987',
              ),
            ],
          ),
          const SizedBox(height: 30)
        ],
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
}
