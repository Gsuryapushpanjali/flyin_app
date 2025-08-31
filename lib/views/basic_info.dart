import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/basic_info_controller.dart';
import '../widgets/rounded_card.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<AppScreen4Controller>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 기본정보 (Basic Information)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Basic Information', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    ),
                    // 아이디 (User ID)
                    const Text('User ID', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.userId.value))),
                    const Divider(),
                    const SizedBox(height: 12),
                    // 이메일 (Email)
                    const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.email.value))),
                    const Divider(),
                    const SizedBox(height: 12),
                    // 휴대폰 번호 (Mobile Number)
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Mobile Number', style: TextStyle(fontWeight: FontWeight.bold)),
                              Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.mobile.value))),
                            ],
                          ),
                        ),

                        ElevatedButton(
  onPressed: ctrl.changeMobile,
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.deepPurple, 
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 0, 
  ),
  child: const Text(
    "Change",
    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
  ),
),

                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: 12),
                    // 닉네임 (Nickname)
                    const Text('Nickname', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.nickname.value))),
                    const Divider(),
                    const SizedBox(height: 12),
                    // 대표 작업 링크 (Main Work Link)
                    const Text('Main Work Link', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(ctrl.workLink.value, style: const TextStyle(color: Colors.blue)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(),

                    // 포트폴리오 (Portfolio)
                    const Text('Portfolio', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(
                      () => Row(
                        children: [
                          Expanded(child: Text(ctrl.portfolio.value)),
                          const Icon(Icons.attach_file, size: 18, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
