import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget child;
  const RoundedCard({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 6,
      child: Padding(padding: const EdgeInsets.all(16), child: child),
    );
  }
}
