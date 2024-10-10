import 'package:flutter/material.dart';

import '../widgets/live_class_card.dart';
import '../widgets/scheduled_class_card.dart';
import '../widgets/toggle_course_button.dart';

class ClassesSection extends StatelessWidget {
  const ClassesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CourseToggleButton(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Ongoing Classes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const LiveClassCard(),
        const SizedBox(
          height: 20,
        ),
        const ScheduledClassCard(),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                minimumSize: Size(width * 0.95, 60),
                backgroundColor: Colors.grey.shade100,
                foregroundColor: Colors.black54),
            child: const Text(
              "View More Classes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
