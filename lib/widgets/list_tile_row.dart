import 'package:flutter/material.dart';

class ListTileRow extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const ListTileRow({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            child: Row(
              children: [
                Text(title, style: const TextStyle(fontSize: 18)),
                const Spacer(),
                const Icon(Icons.chevron_right)
              ],
            ),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
