import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search here...",
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: ImageIcon(
              AssetImage("assets/icons/search.png"),
              color: Colors.purple,
            ),
          ),
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 30,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.purple.shade100),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.purple.shade100),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
