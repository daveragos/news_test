import 'package:flutter/material.dart';

class NewsSource extends StatelessWidget {
  const NewsSource({
    super.key,
    required this.source,
  });

  final String source;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(source,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 15)),
        SizedBox(width: 5),
        Icon(
          Icons.verified,
          color: Colors.blue,
          size: 15,
        ),
      ],
    );
  }
}
