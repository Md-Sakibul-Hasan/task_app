// Controller - Handles login logic
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/home/home_view.dart';
import '../bindings/home_binding.dart';

class AuthController extends GetxController {
  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Observable state
  final RxBool isPasswordVisible = false.obs;
  final RxBool isLoading = false.obs;

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // Handle login action
  Future<void> login() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    // Validation
    if (username.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter username',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
      return;
    }

    if (password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
      return;
    }

    // Simulate login process
    isLoading.value = true;

    try {
      // TODO: Replace with actual API call
      await Future.delayed(const Duration(seconds: 2));

      // Success
      Get.snackbar(
        'Success',
        'Login successful!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.8),
        colorText: Colors.white,
      );

      // Navigate to home screen
      Get.off(
        () => const HomeView(),
        binding: HomeBinding(),
      );
    } catch (e) {
      Get.snackbar(
        'Error',
        'Login failed: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  // Handle forgot password
  void forgotPassword() {
    Get.snackbar(
      'Info',
      'Forgot password functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
    // TODO: Navigate to forgot password screen
  }

  // Handle register
  void register() {
    Get.snackbar(
      'Info',
      'Register functionality',
      snackPosition: SnackPosition.BOTTOM,
    );
    // TODO: Navigate to register screen
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
