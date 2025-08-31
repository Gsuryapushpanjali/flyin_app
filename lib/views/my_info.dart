
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/my_info_controller.dart';
import '../widgets/list_tile_row.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<MyInfoController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back, color: Colors.black)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 내 정보 (My Info)
              const Text('My Info', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              // 기본 정보 (Basic Information)
              ListTileRow(title: 'Basic Information', onTap: ctrl.goToBasicInfo),
              // 비밀번호 설정 (Set Password)
              ListTileRow(title: 'Set Password', onTap: ctrl.goToSetPassword),
              // 관심 카테고리 (Interest Categories)
              ListTileRow(title: 'Interest Categories', onTap: ctrl.goToInterestCategories),
            ],
          ),
        ),
      ),
    );
  }
}
