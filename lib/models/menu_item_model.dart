import 'package:flutter/material.dart';

class MenuItemModel {
  final String id;
  final String title;
  final String icon;

  MenuItemModel({
    required this.id,
    required this.title,
    required this.icon,
  });

  // Sample data for testing
  static List<MenuItemModel> getSampleData() {
    return [
      MenuItemModel(
        id: '1',
        title: 'Analysis Pro',
        icon: 'assets/images/analytics.png',
      ),
      MenuItemModel(
        id: '2',
        title: 'G. Generator',
        icon: 'assets/images/generator.png',
      ),
      MenuItemModel(
        id: '3',
        title: 'Plant Summary',
        icon: 'assets/images/charge.png',
      ),
      MenuItemModel(
        id: '4',
        title: 'Natural Gas',
        icon: 'assets/images/fire.png',
      ),
      MenuItemModel(
        id: '5',
        title: 'D. Generator',
        icon: 'assets/images/generator.png',
      ),
      MenuItemModel(
        id: '6',
        title: 'Water Process',
        icon: 'assets/images/faucet.png',
      ),
    ];
  }
}
