import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/bordered_icon.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/image_container.dart';
import 'package:news_test/widgets/news_container.dart';
import 'package:news_test/widgets/news_source.dart';
import 'package:news_test/widgets/text_pair.dart';
import 'package:news_test/widgets/title_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final List newsContent = Konstants().newsContent;
    return Scaffold(
      // 4 bottom navigation bar

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  //row of container Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderedIcon(
                        icon: Icons.menu,
                      ),
                      BorderedIcon(
                        icon: Icons.notifications_none,
                        onPressed: () {},
                      )
                    ],
                  ),

                  //title
                  TextPair(
                    title: "Welcome back,",
                    desc: "Discover a world of news that matters to you",
                    extra: const Text('Tyler!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),

                  //trending row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(title: 'Trending News'),
                      TextButton(
                          onPressed: () {},
                          child: Text('See all',
                              style: TextStyle(color: Konstants().kGrey)))
                    ],
                  ),

                  //horizontal list of container( scrollable )

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(newsContent.length, (index) {
                        Map<String, String> content = newsContent[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9FCFE),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  ImageContainer(
                                      image: content['image'] ?? '',
                                      height: 150,
                                      width: 285),
                                  Positioned(
                                    top: 5,
                                    left: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: Text(content['tag'] ?? '',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(content['title'] ?? '',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      content['sourceImg'] ?? '',
                                      height: 30,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    label: NewsSource(
                                        source: content['source'] ?? ''),
                                  ),
                                  Text(content['date'] ?? '',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20),
                  //recommendations
                  TitleText(title: 'Recommendations'),
                  //news container

                  Column(
                      children: List.generate(newsContent.length, (index) {
                    Map<String, String> content = newsContent[index];
                    return NewsContainer(newsContent: content);
                  }))
                ],
              )),
        ),
      ),
    );
  }
}
