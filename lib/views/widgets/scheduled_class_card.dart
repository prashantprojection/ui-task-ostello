import 'package:flutter/material.dart';

class ScheduledClassCard extends StatelessWidget {
  const ScheduledClassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.6,
          color: Colors.black26,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(2, 2),
              color: Colors.grey.shade200,
              blurRadius: 6)
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage("assets/thumbnail/video_thumbnail.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Physics - 10th Class",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/vertical_dots.png"),
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Text(
                    "476K views • 3 days ago",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/channel.png"),
                        radius: 10,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Institute Name",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
