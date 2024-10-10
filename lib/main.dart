import 'package:flutter/material.dart';
import 'package:ostello/views/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: const ColorScheme.light(
        primary: Colors.purple,
        secondary: Colors.white,
        outline: Colors.black26,
      )),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
