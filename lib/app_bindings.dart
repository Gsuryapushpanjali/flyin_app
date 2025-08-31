import 'package:get/get.dart';
import 'controllers/basic_info_controller.dart';
import 'controllers/compaign_controller.dart';
import 'controllers/home_controller.dart';
import 'controllers/my_info_controller.dart';
import 'controllers/password_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // lazyPut so controllers alive when used and can be disposed by GetX lifecycle
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AppScreen2Controller>(() => AppScreen2Controller());
    Get.lazyPut<AppScreen3Controller>(() => AppScreen3Controller());
    Get.lazyPut<AppScreen4Controller>(() => AppScreen4Controller());
    Get.lazyPut<AppScreen5Controller>(() => AppScreen5Controller());
  }
}
