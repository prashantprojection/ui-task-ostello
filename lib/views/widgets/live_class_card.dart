import 'package:flutter/material.dart';

class LiveClassCard extends StatelessWidget {
  const LiveClassCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 20;
    return SizedBox(
      height: 300,
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/thumbnail/video_thumbnail.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black87),
                    child: const Text(
                      "47:08",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "LIVE",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/channel.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Physics - 10th Class",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text(
                          "Faculty Name",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ImageIcon(
                          AssetImage("assets/icons/tick_circle.png"),
                          size: 14,
                          color: Colors.black54,
                        )
                      ],
                    ),
                    Text(
                      "476k views • 3 days ago",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                ImageIcon(
                  AssetImage(
                    "assets/icons/vertical_dots.png",
                  ),
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
