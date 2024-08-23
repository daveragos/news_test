import 'package:flutter/material.dart';
import 'package:news_test/screens/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //change the theme of primary button

      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
