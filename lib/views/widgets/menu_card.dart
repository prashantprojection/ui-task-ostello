import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.label, required this.image});
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: width / 3,
      width: width * 0.28,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(6, 6),
                blurRadius: 10,
                blurStyle: BlurStyle.normal,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage("assets/category/$image.png"),
              fit: BoxFit.contain,
            ),
            Text(
              label,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
