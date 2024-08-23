import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel(
      {super.key,
      required this.image,
      required this.title,
      required this.desc});

  final String image;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            desc,
            style: TextStyle(
              color: Color(0xFF7C82A1),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
