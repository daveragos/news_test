import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';

class TextPair extends StatelessWidget {
  TextPair({
    super.key,
    required this.title,
    required this.desc,
    this.extra,
    this.titleSize = 20,
    this.descSize = 16,
  });

  final String title;
  final String desc;
  Widget? extra;
  final double titleSize;
  final double descSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              extra ?? SizedBox(),
            ],
          ),
          Text(
            desc,
            style: TextStyle(
              color: Konstants().kGrey,
              fontSize: descSize,
            ),
          ),
        ],
      ),
    );
  }
}
