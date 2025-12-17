// Widget - Custom App Bar
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool showNotification;
  final VoidCallback? onBackPressed;
  final VoidCallback? onNotificationPressed;
  final bool hasNotificationBadge;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.showNotification = true,
    this.onBackPressed,
    this.onNotificationPressed,
    this.hasNotificationBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24,
              ),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: showNotification
          ? [
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                    onPressed: onNotificationPressed,
                  ),
                  if (hasNotificationBadge)
                    Positioned(
                      right: 11,
                      top: 11,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
