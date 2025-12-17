import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;

  const CustomRadioButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.selectedColor = const Color(0xFF0096FC),
    this.unselectedColor = const Color(0xFF9CA3AF),
    this.selectedTextColor = const Color(0xFF0096FC),
    this.unselectedTextColor = const Color(0xFF6B7280),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? selectedColor : unselectedColor,
                width: 1,
              ),
            ),
            child: Center(
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? selectedColor : unselectedColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? selectedTextColor : unselectedTextColor,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
