import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_app_bar.dart';

class MenuDetailView extends StatelessWidget {
  final String title;

  const MenuDetailView({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5F4FE),
      appBar: CustomAppBar(
        title: 'SCM',
        showBackButton: true,
        onBackPressed: () => Get.back(),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 25),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFB6B8D0),
            width: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // No data image
              Image.asset(
                'assets/images/no_data.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              // No data text
              const Text(
                'No data is here,\nplease wait.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF5E5E5E),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
