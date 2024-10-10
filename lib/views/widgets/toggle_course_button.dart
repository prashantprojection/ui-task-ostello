import 'package:flutter/material.dart';

class CourseToggleButton extends StatefulWidget {
  const CourseToggleButton({super.key});
  @override
  State<CourseToggleButton> createState() => _CourseToggleButtonState();
}

class _CourseToggleButtonState extends State<CourseToggleButton> {
  bool isFreeSelected = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.95,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFreeSelected = true;
              });
            },
            child: Container(
              width: width * 0.45,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isFreeSelected ? Colors.black : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: isFreeSelected
                    ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        )
                      ]
                    : [],
              ),
              child: Center(
                child: Text(
                  'Free Courses',
                  style: TextStyle(
                    color: isFreeSelected ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              setState(() {
                isFreeSelected = false;
              });
            },
            child: Container(
              width: width * 0.45,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: !isFreeSelected ? Colors.black : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: !isFreeSelected
                    ? [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        )
                      ]
                    : [],
              ),
              child: Center(
                child: Text(
                  'Paid Courses',
                  style: TextStyle(
                    color: !isFreeSelected ? Colors.white : Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
