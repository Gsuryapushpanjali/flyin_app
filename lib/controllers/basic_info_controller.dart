// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AppScreen4Controller extends GetxController {
//   final RxString userId = 'asdf123'.obs;
//   final RxString email = 'asdf123@naver.com'.obs;
//   final RxString mobile = '010-1234-5678'.obs;
//   final RxString nickname = 'Jangbalsan'.obs;
//   final RxString workLink = 'https://www.naver.com/'.obs;

//   void changeMobile() {
//     // this would show a dialog/flow to change mobile
//     Get.dialog(AlertDialog(
//       title: const Text('Change Mobile'),
//       content: const Text('Mobile change flow is not implemented in this demo'),
//       actions: [TextButton(onPressed: () => Get.back(), child: const Text('OK'))],
//     ));
//   }
// }


import 'package:get/get.dart';

class AppScreen4Controller extends GetxController {
  var userId = "asdf123".obs;
  var email = "asdf123@naver.com".obs;
  var mobile = "010-1234-5678".obs;
  var nickname = "Jangbalsan".obs;
  var workLink = "https://www.naver.com/".obs;
  var portfolio = "Portfolio.pdf".obs;

  void changeMobile() {
    // Open a dialog or page to change number
    mobile.value = "010-9999-8888"; // Demo update
  }
}

