import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/image_container.dart';
import 'package:news_test/widgets/news_source.dart';
import 'package:news_test/widgets/title_text.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    required this.newsContent,
  });

  final Map<String, String> newsContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 400,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: Konstants().kContainerColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        newsContent['sourceImg'] ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewsSource(source: newsContent['source'] ?? ''),
                        Text(
                          newsContent['date'] ?? '',
                          style: TextStyle(color: Konstants().kGrey),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    KElevatedButton(
                        text: 'Follow',
                        bg: Colors.grey[300]!,
                        borderColor: Colors.grey[300]!,
                        fg: Colors.black),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FluentIcons.more_vertical_16_filled,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: TitleText(title: newsContent['title'] ?? ''),
            ),
            KElevatedButton(
              text: newsContent['tag'] ?? '',
              bg: Konstants().kContainerColor,
              borderColor: Colors.blue,
              fg: Colors.blue,
              // onPressed: () {},
            ),
            SizedBox(
              height: 12,
            ),
            ImageContainer(
              image: newsContent['image'] ?? '',
              height: 200,
              width: 350,
            )
          ],
        ),
      ),
    );
  }
}
