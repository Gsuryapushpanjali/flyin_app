import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppScreen5Controller extends GetxController {
  final RxString currentPassword = ''.obs;
  final RxString newPassword = ''.obs;
  final RxString confirmPassword = ''.obs;

  bool validate() {
    // very brief validation demonstration
    if (newPassword.value.length < 5 || newPassword.value.length > 13) {
      Get.snackbar('Error', 'New password must be 5-13 characters');
      return false;
    }
    if (newPassword.value != confirmPassword.value) {
      Get.snackbar('Error', 'Passwords do not match');
      return false;
    }
    return true;
  }

  void complete() {
    if (!validate()) return;
    // perform password update flow (API call...)
    Get.dialog(AlertDialog(
      title: const Text('Password'),
      content: const Text('Password updated (demo).'),
      actions: [TextButton(onPressed: () => Get.back(), child: const Text('OK'))],
    ));
  }
}
