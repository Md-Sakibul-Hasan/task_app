import 'package:flutter/material.dart';

class MenuItemModel {
  final String id;
  final String title;
  final IconData icon;
  final Color iconColor;

  MenuItemModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.iconColor,
  });

  // Sample data for testing
  static List<MenuItemModel> getSampleData() {
    return [
      MenuItemModel(
        id: '1',
        title: 'Analysis Pro',
        icon: Icons.analytics,
        iconColor: const Color(0xFF4A90E2),
      ),
      MenuItemModel(
        id: '2',
        title: 'G. Generator',
        icon: Icons.electric_bolt,
        iconColor: const Color(0xFFFFB800),
      ),
      MenuItemModel(
        id: '3',
        title: 'Plant Summary',
        icon: Icons.factory,
        iconColor: const Color(0xFFFF6B35),
      ),
      MenuItemModel(
        id: '4',
        title: 'Natural Gas',
        icon: Icons.local_fire_department,
        iconColor: const Color(0xFFFF3B30),
      ),
      MenuItemModel(
        id: '5',
        title: 'D. Generator',
        icon: Icons.power,
        iconColor: const Color(0xFFFFB800),
      ),
      MenuItemModel(
        id: '6',
        title: 'Water Process',
        icon: Icons.water_drop,
        iconColor: const Color(0xFF4A90E2),
      ),
    ];
  }
}
