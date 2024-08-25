import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/c_text_field.dart';
import 'package:news_test/widgets/image_container.dart';
import 'package:news_test/widgets/news_container.dart';
import 'package:news_test/widgets/text_pair.dart';
import 'package:news_test/widgets/title_text.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double _currentPosition = 0.0;
  final TextEditingController searchText = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentPosition = _tabController.index.toDouble();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List newsContent = Konstants().newsContent;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              TextPair(
                  title: 'Discover',
                  desc:
                      'Uncover a world of captivating stories and stay informed'),
              SizedBox(
                height: 10,
              ),
              //search box
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: KTextField(
                    textController: searchText,
                    icon: Icons.search,
                    obscure: false,
                    hint: 'Search "News"'),
              ),
              //publisher list
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(title: 'Publisher'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
              //news tab
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(newsContent.length, (index) {
                    Map<String, String> content = newsContent[index];
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Konstants().kContainerColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ImageContainer(
                              image: content['sourceImg'] ?? '',
                              height: 60,
                              width: 60),
                          Text(
                            "${content['source']} News" ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          KElevatedButton(
                              height: 30,
                              text: 'Follow',
                              bg: Colors.grey[300]!,
                              borderColor: Colors.grey[300]!,
                              fg: Colors.black)
                        ],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //news container
              TitleText(title: 'News'),
              //tab
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Recommended'),
                  Tab(text: 'Most Visited'),
                  Tab(text: 'Popular'),
                  Tab(text: 'Technology'),
                ],
                labelStyle: TextStyle(
                  fontSize: 12,
                ),
                labelColor: Colors.blue,
                unselectedLabelColor: Konstants().kGrey,
                //FIXME: use DotIndicator package for the indicator
                indicatorColor: Colors.blue,
              ),

              Container(
                height: 450,
                child: TabBarView(
                    controller: _tabController,
                    children: List.generate(newsContent.length, (index) {
                      final content = newsContent[index];
                      return NewsContainer(newsContent: content);
                    })),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
