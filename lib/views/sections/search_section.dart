import 'package:flutter/material.dart';
import 'package:ostello/views/widgets/search_bar.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const Flexible(child: CustomSearchBar()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              minimumSize: Size(width * 0.3, 53),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text("Study"),
          ),
        )
      ],
    );
  }
}
