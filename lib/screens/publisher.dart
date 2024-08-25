import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/bordered_icon.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/c_text_field.dart';
import 'package:news_test/widgets/image_container.dart';
import 'package:news_test/widgets/news_container.dart';
import 'package:news_test/widgets/text_pair.dart';
import 'package:news_test/widgets/title_text.dart';

class Publisher extends StatefulWidget {
  const Publisher({super.key});

  @override
  State<Publisher> createState() => _PublisherState();
}

class _PublisherState extends State<Publisher> {
  String sort = 'Newest';
  List<String> sortOptions = ['Newest', 'Oldest', 'Most Read', 'Most Liked'];
  final TextEditingController searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List newsContent = Konstants().newsContent;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // header row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderedIcon(icon: Icons.arrow_back),
                    SizedBox(width: 10),
                    Text(
                      'Publisher',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    BorderedIcon(icon: Icons.more_vert),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //followers row
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const ImageContainer(
                          image: 'assets/images/forbes.png',
                          height: 95,
                          width: 95),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FollowersText(
                                number: '6.8K',
                                type: 'news',
                              ),
                              FollowersText(
                                number: '2.4K',
                                type: 'followers',
                              ),
                              FollowersText(
                                number: '100',
                                type: 'following',
                              )
                            ],
                          ),
                          KElevatedButton(
                              text: 'Follow',
                              bg: Colors.black,
                              borderColor: Colors.black,
                              fg: Colors.white)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //title
                TextPair(
                  title: 'Forbes',
                  desc:
                      'Empowering your business journey with expert insights and influential perspectives.',
                  descSize: 14,
                  extra: const Icon(
                    Icons.verified_rounded,
                    color: Colors.blue,
                  ),
                ),
                //sort
                const TitleText(title: 'News by Forbes'),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text('sort by'),
                          const SizedBox(width: 10),
                          DropdownButton(
                            items: sortOptions.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                sort = value!;
                              });
                            },
                            value: sort,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    height: 14,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    height: 14,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //search
                KTextField(
                    textController: searchText,
                    icon: Icons.search,
                    obscure: false,
                    hint: 'Search "News"'),
                SizedBox(
                  height: 10,
                ),
                //news conrainer
                Column(
                  children: List.generate(newsContent.length, (index) {
                    final content = newsContent[index];
                    return NewsContainer(newsContent: content);
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FollowersText extends StatelessWidget {
  const FollowersText({
    super.key,
    required this.number,
    required this.type,
  });
  final String number;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(type, style: TextStyle(color: Konstants().kGrey))
      ],
    );
  }
}
