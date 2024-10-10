import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        label: Text(label),
      ),
    );
  }
}
