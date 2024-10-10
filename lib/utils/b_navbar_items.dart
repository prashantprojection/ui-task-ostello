import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavigationBarItems = [
  bNavItem(icon: "home", label: "Home"),
  bNavItem(icon: "schedule", label: "Schedule"),
  bNavItem(icon: "content", label: "Content"),
  bNavItem(icon: "batches", label: "Batches"),
  bNavItem(icon: "bubble", label: "Ai Tutor")
];

bNavItem({required String icon, required String label}) {
  return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage("assets/icons/$icon.png")), label: label);
}
