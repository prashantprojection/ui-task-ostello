import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //If needed Shimmer effect then uncomment the below code
        //and comment the Linear Gradient of the Container below
        // Shimmer.fromColors(
        //   baseColor: const Color.fromARGB(255, 18, 226, 28),
        //   highlightColor: Colors.greenAccent.shade100,
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(16),
        //       color: Colors.greenAccent,
        //     ),
        //   ),
        // ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            /* Comment this for shimmer effect */
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 12, 232, 125),
                Color.fromARGB(255, 181, 255, 219),
                Color.fromARGB(255, 12, 232, 125),
                Color.fromARGB(255, 12, 226, 123),
                Color.fromARGB(255, 10, 200, 108),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            /* till here */
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Study with"),
                  Text(
                    "India's best Coaching Centres",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Anytime, Anywhere!"),
                ],
              ),
              Flexible(
                child: Image(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/carousel/$image.png"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
