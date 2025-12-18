import 'package:flutter/material.dart';

class DataItemModel {
  final String id;
  final String title;
  final String statusText;
  final Color statusColor;
  final bool isActive;
  final String icon;
  final Color iconBackgroundColor;
  final Color titleIconColor;
  final String data1Label;
  final String data1Value;
  final String data2Label;
  final String data2Value;

  DataItemModel({
    required this.id,
    required this.title,
    required this.statusText,
    required this.statusColor,
    required this.isActive,
    required this.icon,
    required this.iconBackgroundColor,
    this.titleIconColor = const Color(0xFFFB902E),
    required this.data1Label,
    required this.data1Value,
    required this.data2Label,
    required this.data2Value,
  });

  // Sample data for testing
  static List<DataItemModel> getSampleData() {
    return [
      DataItemModel(
        id: '1',
        title: 'Data View',
        statusText: 'Active',
        statusColor: const Color(0xFF0096FC),
        isActive: true,
        icon: "assets/images/solar_cell.png",
        iconBackgroundColor: const Color(0xFF5DADE2),
        titleIconColor: const Color(0xFF7EC8E3),
        data1Label: 'Data 1',
        data1Value: '55505.63',
        data2Label: 'Data 2',
        data2Value: '58805.63',
      ),
      DataItemModel(
        id: '2',
        title: 'Data Type 2',
        statusText: 'Active',
        statusColor: const Color(0xFF0096FC),
        isActive: true,
        icon: "assets/images/bettery.png",
        iconBackgroundColor: const Color(0xFFFF9500),
        titleIconColor: const Color(0xFFFB902E),
        data1Label: 'Data 1',
        data1Value: '55505.63',
        data2Label: 'Data 2',
        data2Value: '58805.63',
      ),
      DataItemModel(
        id: '3',
        title: 'Data Type 3',
        statusText: 'Inactive',
        statusColor: const Color(0xFFFF3B30),
        isActive: false,
        icon: "assets/images/power.png",
        iconBackgroundColor: const Color(0xFF5DADE2),
        titleIconColor: const Color(0xFF7EC8E3),
        data1Label: 'Data 1',
        data1Value: '55505.63',
        data2Label: 'Data 2',
        data2Value: '58805.63',
      ),
      DataItemModel(
        id: '4',
        title: 'Data Type 4',
        statusText: 'Inactive',
        statusColor: const Color(0xFFFF3B30),
        isActive: false,
        icon: "assets/images/solar_cell.png",
        iconBackgroundColor: const Color(0xFF5DADE2),
        titleIconColor: const Color(0xFF7EC8E3),
        data1Label: 'Data 1',
        data1Value: '55505.63',
        data2Label: 'Data 2',
        data2Value: '58805.63',
      ),
    ];
  }
}
