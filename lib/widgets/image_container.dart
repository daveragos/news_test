import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.image,
    required this.height,
    required this.width,
  });

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
      clipBehavior: Clip.hardEdge,
    );
  }
}
