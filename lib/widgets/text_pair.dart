import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';

class TextPair extends StatelessWidget {
  TextPair({
    super.key,
    required this.title,
    required this.desc,
    this.extra,
  });

  final String title;
  final String desc;
  Widget? extra;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              extra ?? SizedBox(),
            ],
          ),
          Text(
            desc,
            style: TextStyle(
              color: Konstants().kColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
