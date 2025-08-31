import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _choosePhoto() async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Camera"),
                onTap: () async {
                  Navigator.pop(context);
                  await _picker.pickImage(source: ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_album),
                title: const Text("Album"),
                onTap: () async {
                  Navigator.pop(context);
                  await _picker.pickImage(source: ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // ✅ clean white background
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with photo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hello,\nHong Gildong",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // ✅ force black
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.camera_alt, size: 32, color: Colors.grey),
                        onPressed: _choosePhoto,
                      ),
                      const Text("Add Photo",
                          style: TextStyle(fontSize: 12, color: Colors.black54)),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 24),
GestureDetector(
  onTap: () {
    Get.toNamed('/compaignmatching'); // 👈 navigate to your route
  },
  child: Text(
    "My Campaign",
    style: TextStyle(
      fontSize: 16,
      // fontWeight: FontWeight.w600,
      color: Colors.black, // match your design
    ),
  ),
),

          
              const SizedBox(height: 16),

              // Campaign status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _statusBox("Applied", 0),
                  _statusBox("In Progress", 0),
                  _statusBox("Completed", 0),
                ],
              ),

              const SizedBox(height: 30),

              // Menu Items
              _menuItem(Icons.person, "My Info", onTap: () => Get.toNamed('/myinfo')),
              _menuItem(Icons.campaign, "Announcements"),
              _menuItem(Icons.chat, "1:1 Inquiry"),
              _menuItem(Icons.help_outline, "FAQ"),
              _menuItem(Icons.security, "Terms & Policies"),
              _menuItem(Icons.logout, "Membership Withdrawal"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statusBox(String label, int count, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            "$count",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black, // ✅ black numbers
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black54), // ✅ lighter gray
          ),
        ],
      ),
    );
  }

  Widget _menuItem(IconData icon, String text, {VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87), // ✅ consistent black
      title: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.black54),
      onTap: onTap,
    );
  }
}
