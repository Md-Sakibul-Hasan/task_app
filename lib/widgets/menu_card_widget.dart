import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCardWidget extends StatelessWidget {
  final String title;
  final String icon;

  final VoidCallback? onTap;

  const MenuCardWidget({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFFB6B8D0),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF646984),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
