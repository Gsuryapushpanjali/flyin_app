import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MediaService {
  final ImagePicker _picker = ImagePicker();

  /// Ask for permissions on Android and iOS (if needed).
  Future<bool> ensurePermissions({bool camera = false}) async {
    // Request storage (photos) and camera if needed.
    final statuses = <Permission, PermissionStatus>{};
    statuses[Permission.photos] = await Permission.photos.request();
    if (camera) statuses[Permission.camera] = await Permission.camera.request();
    // On Android older devices, may need storage permission
    if (Platform.isAndroid) {
      statuses[Permission.storage] = await Permission.storage.request();
    }
    return statuses.values.every((s) => s.isGranted);
  }

  Future<File?> pickFromGallery() async {
    final XFile? res = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 85);
    if (res == null) return null;
    return File(res.path);
  }

  Future<File?> pickFromCamera() async {
    final XFile? res = await _picker.pickImage(source: ImageSource.camera, imageQuality: 85);
    if (res == null) return null;
    return File(res.path);
  }
}
