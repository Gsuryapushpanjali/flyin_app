import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_bindings.dart';
import 'app_routings.dart';
import 'app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MY FLYN',
      initialRoute: AppRoutes.splash_Screen,
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
theme: AppTheme.lightTheme,
    );
  }
}
