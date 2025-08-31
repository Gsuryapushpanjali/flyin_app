import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/compaign_controller.dart';

class CampaignMatching extends StatelessWidget {
  const CampaignMatching({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<ComapignMatchingController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // 캠페인 매칭 (Campaign Matching)
          title: const Text('Campaign Matching', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // 신청 (Application) / 진행중 (In Progress) / 완료 (Completed)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    // 신청 (Application)
                    Text('Application', style: TextStyle(fontWeight: FontWeight.bold)),
                    // 진행중 (In Progress)
                    Text('In Progress'),
                    // 완료 (Completed)
                    Text('Completed'),
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                child: Obx(() {
                  return ListView.separated(
                    itemCount: ctrl.campaigns.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 18),
                    itemBuilder: (context, index) {
                      final c = ctrl.campaigns[index];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(width: 80, height: 80, child: const Icon(Icons.image, size: 36)),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 회사명/캠페인명 (Company/Campaign Name)
                                Text(c.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 8),
                                // 소개말 (Description)
                                Text(c.description, maxLines: 3, overflow: TextOverflow.ellipsis),
                                const SizedBox(height: 8),
                                // 태그 (Tags)
                                Wrap(
                                  spacing: 12,
                                  children: c.tags.map((t) => Text(t, style: const TextStyle(color: Colors.deepPurple))).toList(),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
