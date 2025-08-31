import 'package:get/get.dart';

class AppScreen4Controller extends GetxController {
  var userId = "asdf123".obs;
  var email = "asdf123@naver.com".obs;
  var mobile = "010-1234-5678".obs;
  var nickname = "Jangbalsan".obs;
  var workLink = "https://www.naver.com/".obs;
  var portfolio = "Portfolio.pdf".obs;

  void changeMobile() {
    mobile.value = "010-9999-8888"; 
  }
}

