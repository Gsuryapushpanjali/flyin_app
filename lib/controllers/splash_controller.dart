import 'package:get/get.dart';
import 'dart:async';

class SplashController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 2), () {
      isLoading.value = false;
      Get.offAllNamed('/home'); // Navigate to home
    });
  }
}
