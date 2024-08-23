import 'package:flutter/material.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/carousel.dart';
import 'package:news_test/widgets/dots.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;

  List<Map<String, String>> content = [
    {
      'image': 'assets/images/city.png',
      'title': 'Zero to know',
      'description':
          'Lorem ipsum dolor sit amet consectetur adipiscing, elit commodo dictumst cras interdum.',
    },
    {
      'image': 'assets/images/building.png',
      'title': 'First to know',
      'description':
          'All news in one place, be the first to know the last news.',
    },
    {
      'image': 'assets/images/boy.png',
      'title': 'Second to know',
      'description':
          'Quam quis natoque et rhoncus praesent, eget class venenatis',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            //carousel
            SizedBox(
              height: 400,
              child: PageView.builder(
                itemCount: content.length,
                onPageChanged: (value) => setState(() {
                  _currentPage = value;
                }),
                itemBuilder: (context, index) => Carousel(
                  image: content[index]['image']!,
                  title: content[index]['title']!,
                  desc: content[index]['description']!,
                ),
              ),
            ),
            //Dots

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(isActive: _currentPage == index),
                ),
              ),
            ),
            const Spacer(flex: 2),
            //button
            Row(
              children: [
                Expanded(
                  child: CButton(
                    text: 'Get Started',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
