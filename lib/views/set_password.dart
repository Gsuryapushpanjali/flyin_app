import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/password_controller.dart';

class Password extends StatelessWidget {
  const Password({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<AppScreen5Controller>();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, iconTheme: const IconThemeData(color: Colors.black)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 비밀번호 설정 (Set Password)
              const Text('Set Password', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
              const SizedBox(height: 18),
              // 기본 비밀번호 (Current Password)
              const Text('Current Password'),
              TextField(
                onChanged: (v) => ctrl.currentPassword.value = v,
                decoration: const InputDecoration(
                  hintText: '6-16 characters including letters, numbers, and special symbols',
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)),),
                ),
              ),
              const SizedBox(height: 12),
              // 새 비밀번호 (New Password)
              const Text('New Password'),
              TextField(
                onChanged: (v) => ctrl.newPassword.value = v,
                decoration: const InputDecoration(hintText: '5-13 characters including letters, numbers, and special symbols', border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              const SizedBox(height: 12),
              // 비밀번호 확인 (Confirm Password)
              const Text('Confirm Password'),
              TextField(
                onChanged: (v) => ctrl.confirmPassword.value = v,
                decoration: const InputDecoration(hintText: 'Please re-enter your password', border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12)))), // 비밀번호를 재입력해 주세요.
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ctrl.complete, child: const Padding(padding: EdgeInsets.symmetric(vertical: 14.0), child: Text('Complete'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
