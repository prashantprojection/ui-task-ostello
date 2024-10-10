import 'package:flutter/material.dart';
import 'package:ostello/views/widgets/filter_button.dart';

import '../../utils/chips_data.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const FilterButton(),
        Container(
          width: 1.5,
          height: 30,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: const BoxDecoration(color: Colors.black54),
        ),
        SizedBox(
          height: 35,
          width: width * 0.6,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chips.length,
              itemBuilder: (ctx, i) {
                return chips[i];
              }),
        ),
      ],
    );
  }
}
