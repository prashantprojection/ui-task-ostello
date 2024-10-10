import 'package:flutter/material.dart';
import 'package:ostello/views/widgets/short_feed_card.dart';

class ShortFeedSection extends StatelessWidget {
  const ShortFeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return const ShortFeedCard();
          }),
    );
  }
}
