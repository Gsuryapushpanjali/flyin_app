import 'package:get/get.dart';

class AppScreen3Controller extends GetxController {
  // profile fields with sample data
  final RxString userId = 'asdf123'.obs;
  final RxString email = 'asdf123@naver.com'.obs;
  final RxString mobile = '010-1234-5678'.obs;
  final RxString nickname = 'Jangbalsan'.obs;
  final RxString workLink = 'https://www.naver.com/'.obs;

  void goToBasicInfo() => Get.toNamed('/basicinfo');
  void goToSetPassword() => Get.toNamed('/password');
  void goToInterestCategories() => Get.snackbar('Interest', 'Open categories');
}
