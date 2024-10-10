import 'package:flutter/material.dart';
import 'package:ostello/views/widgets/menu_card.dart';

class TopMenuSection extends StatelessWidget {
  const TopMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MenuCard(
          image: "career_trend",
          label: "Career Trends",
        ),
        MenuCard(
          image: "assessment",
          label: "Assessment",
        ),
        MenuCard(
          image: "popular_skill",
          label: "Popular Skills",
        ),
      ],
    );
  }
}
