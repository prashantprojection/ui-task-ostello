import 'package:flutter/material.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        children: [
          const ImageIcon(
            AssetImage("assets/icons/drawer.png"),
          ),
          const SizedBox(
            width: 25,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple.shade100, width: 0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12th IIT JEE ",
                  style: TextStyle(fontSize: 12),
                ),
                ImageIcon(
                    color: Colors.purple,
                    size: 10,
                    AssetImage(
                      "assets/icons/arrow.png",
                    ))
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.purple.shade100.withOpacity(0.2),
              border: Border.all(width: 0.5, color: Colors.purple.shade500),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                ImageIcon(
                  AssetImage("assets/icons/coin.png"),
                  color: Colors.amber,
                ),
                Text(
                  "300",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
