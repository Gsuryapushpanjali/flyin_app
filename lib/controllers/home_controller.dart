import 'dart:io';
import 'package:get/get.dart';
import '../services/service.dart';

class HomeController extends GetxController {
  final MediaService _mediaService = MediaService();

  // Rx for selected image path (nullable)
  final Rxn<File> pickedImage = Rxn<File>();

  final RxBool isPicking = false.obs;

  Future<void> pickFromGallery() async {
    isPicking.value = true;
    final ok = await _mediaService.ensurePermissions(camera: false);
    if (!ok) {
      isPicking.value = false;
      Get.snackbar('Permission', 'Gallery permission denied');
      return;
    }
    final file = await _mediaService.pickFromGallery();
    pickedImage.value = file;
    isPicking.value = false;
  }

  Future<void> pickFromCamera() async {
    isPicking.value = true;
    final ok = await _mediaService.ensurePermissions(camera: true);
    if (!ok) {
      isPicking.value = false;
      Get.snackbar('Permission', 'Camera permission denied');
      return;
    }
    final file = await _mediaService.pickFromCamera();
    pickedImage.value = file;
    isPicking.value = false;
  }

  // Extra navigation to demonstrate another route
  void goToCampaigns() => Get.toNamed('/compaignmatching');
  void goToMyInfo() => Get.toNamed('/myinfo');
}
