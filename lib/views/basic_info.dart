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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('Basic Information', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    ),
                    const Text('User ID', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.userId.value))),
                    const Divider(),
                    const SizedBox(height: 12),
                    const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.email.value))),
                    const Divider(),
                    const SizedBox(height: 12),
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
    backgroundColor: Colors.deepPurple, // button fill color
    foregroundColor: Colors.white, // text color
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // slightly rounded corners
    ),
    elevation: 0, // flat look like in design
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
                    const Text('Nickname', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(() => Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(ctrl.nickname.value))),
                    const Divider(),
                    const SizedBox(height: 12),
                    const Text('Main Work Link', style: TextStyle(fontWeight: FontWeight.bold)),
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(ctrl.workLink.value, style: const TextStyle(color: Colors.blue)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(),

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

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/basicinfoctrl.dart';
// import '../widgets/rounded_card.dart';

// class BasicInfo extends StatelessWidget {
//   const BasicInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ctrl = Get.find<AppScreen4Controller>();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.black),
//         title: const Text("Basic Information",
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
//         centerTitle: false,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: RoundedCard(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     buildInfoRow("User ID", Obx(() => Text(ctrl.userId.value))),
//                     buildDivider(),
//                     buildInfoRow("Email", Obx(() => Text(ctrl.email.value))),
//                     buildDivider(),
//                     buildMobileRow(ctrl),
//                     buildDivider(),
//                     buildInfoRow("Nickname", Obx(() => Text(ctrl.nickname.value))),
//                     buildDivider(),
//                     buildInfoRow(
//                       "Main Work Link",
//                       Obx(() => GestureDetector(
//                             onTap: () {
//                               // Launch URL
//                             },
//                             child: Text(ctrl.workLink.value,
//                                 style: const TextStyle(
//                                     color: Colors.blue,
//                                     decoration: TextDecoration.underline)),
//                           )),
//                     ),
//                     buildDivider(),
//                     buildInfoRow(
//                       "Portfolio",
//                       Obx(() => Row(
//                             children: [
//                               Expanded(child: Text(ctrl.portfolio.value)),
//                               const Icon(Icons.attach_file,
//                                   size: 18, color: Colors.grey),
//                             ],
//                           )),
//                     ),
//                   ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildInfoRow(String label, Widget value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12.0),
//       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//         Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
//         const SizedBox(height: 6),
//         value
//       ]),
//     );
//   }

//   Widget buildMobileRow(AppScreen4Controller ctrl) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("Mobile Number",
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 6),
//                   Obx(() => Text(ctrl.mobile.value)),
//                 ]),
//           ),
//           ElevatedButton(
//               onPressed: ctrl.changeMobile, child: const Text("Change"))
//         ],
//       ),
//     );
//   }

//   Widget buildDivider() => const Divider(thickness: 1, height: 1);
// }
