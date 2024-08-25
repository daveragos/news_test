import 'package:flutter/material.dart';
import 'package:news_test/screens/discover.dart';
import 'package:news_test/screens/home.dart';
import 'package:news_test/screens/publisher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Discover(),
    );
  }
}
