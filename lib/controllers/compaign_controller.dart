import 'package:get/get.dart';

class Campaign {
  final String title;
  final String description;
  final List<String> tags;
  Campaign({required this.title, required this.description, required this.tags});
}

class AppScreen2Controller extends GetxController {
  final RxList<Campaign> campaigns = <Campaign>[].obs;

  @override
  void onInit() {
    super.onInit();
    // sample data to match Figma list
    campaigns.assignAll([
      Campaign(title: 'Company Name Here', description: 'This is the introduction text for the campaign. Only a brief prview is shown...', tags: ['F&B', 'Fashion','Kids','Interior']),
      Campaign(title: 'Company Name Here', description: 'This is the introduction text for the campaign. Only a brief prview is shown...', tags: ['F&B','Fashion','Kids','Interior']),
      Campaign(title: 'Company Name Here', description: 'This is the introduction text for the campaign. Only a brief prview is shown...', tags: ['F&B','Fashion','Kids','Interior']),
    ]);
  }

  // If you later implement pagination or refresh: methods go here
}
