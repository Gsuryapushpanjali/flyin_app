import 'package:get/get.dart';
import 'views/compaign_matching.dart';
import 'views/home.dart';
import 'views/my_info.dart';
import 'views/basic_info.dart';
import 'views/set_password.dart';
import 'app_bindings.dart';
import 'views/splash_screen.dart';

class AppRoutes {
  static const splash_Screen = '/splash';
  static const home = '/home';
  static const compaign_matching= '/compaignmatching';
  static const my_info= '/myinfo';
  static const basic_info = '/basicinfo';
  static const password = '/password';

  static final pages = [
    GetPage(
      name: splash_Screen,
      page: () => const SplashScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: home,
      page: () => Home(),
      binding: AppBindings(),
    ),
    GetPage(
      name: compaign_matching,
      page: () => const CampaignMatching(),
      binding: AppBindings(),
    ),
    GetPage(
      name: my_info,
      page: () => const MyInfo(),
      binding: AppBindings(),
    ),
    GetPage(
      name: basic_info,
      page: () => const BasicInfo(),
      binding: AppBindings(),
    ),
    GetPage(
      name: password,
      page: () => const Password(),
      binding: AppBindings(),
    ),
  ];
}
