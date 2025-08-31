import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/compaign_controller.dart';

class CampaignMatching extends StatelessWidget {
  const CampaignMatching({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<AppScreen2Controller>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Campaign Matching', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Tab-like row (Application / In Progress / Completed)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Application', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('In Progress'),
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
                                Text(c.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 8),
                                Text(c.description, maxLines: 3, overflow: TextOverflow.ellipsis),
                                const SizedBox(height: 8),
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
