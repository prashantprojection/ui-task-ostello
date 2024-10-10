import 'package:flutter/material.dart';

class ShortFeedCard extends StatelessWidget {
  const ShortFeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/thumbnail/short_thumbnail.jpg"),
        ),
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(6),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              Text(
                "2.5 M",
                style: TextStyle(color: Colors.white, fontSize: 12),
              )
            ],
          ),
          Expanded(child: SizedBox()),
          Text(
            "Manoj Classes",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Maths - 10th",
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
