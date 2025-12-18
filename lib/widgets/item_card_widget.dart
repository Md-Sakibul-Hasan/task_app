import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCardWidget extends StatelessWidget {
  final String title;
  final String? statusText;
  final Color? statusColor;
  final String icon;
  final Color iconBackgroundColor;
  final Color titleIconColor;
  final String data1Label;
  final String data1Value;
  final String data2Label;
  final String data2Value;
  final VoidCallback? onTap;

  const ItemCardWidget({
    super.key,
    required this.title,
    this.statusText,
    this.statusColor,
    required this.icon,
    this.iconBackgroundColor = const Color(0xFFFF9500),
    this.titleIconColor = const Color(0xFF7EC8E3),
    required this.data1Label,
    required this.data1Value,
    required this.data2Label,
    required this.data2Value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFE5F4FE),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xFFA5A7B9), width: 1),
        ),
        child: Row(
          children: [
            // Icon
            Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 10),
            // Data
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title with status
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: titleIconColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (statusText != null) ...[
                        const SizedBox(width: 4),
                        Text(
                          '($statusText)',
                          style: TextStyle(
                            color: statusColor ?? const Color(0xFF0096FC),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Data 1
                  Row(
                    children: [
                      Text(
                        '$data1Label : ',
                        style: const TextStyle(
                          color: Color(0xFFA5A7B9),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        data1Value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  // Data 2
                  Row(
                    children: [
                      Text(
                        '$data2Label : ',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        data2Value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Chevron icon
            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
