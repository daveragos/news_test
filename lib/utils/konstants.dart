import 'package:flutter/material.dart';

class Konstants {
  var kGrey = Color(0xFF7C82A1);
  Color kPurple = Color(0xFF475AD7);
  Color kContainerColor = Color(0xFFF9FCFE);
  final selectedFilters = <String>[
    'Politics',
    'Economy',
    'Lifestyle',
    'Business',
  ];
  final category = <String>[
    'Politics',
    'Economy',
    'Lifestyle',
    'Business',
    'Entertainment',
    'Fashion',
    'Food',
    'Arts',
    'Travel',
    'Health',
    'Science',
    'Sports',
    'World',
    'Technology'
  ];
  final location = <String>[
    'Africa',
    'Asia',
    'Europe',
    'North America',
    'South America',
    'Oceania',
    'Antarctica',
    'Global'
  ];
  List<Map<String, String>> newsContent = [
    {
      'image': 'assets/images/chess.png',
      'tag': 'Politics',
      'title': 'Trump says he will not run for president',
      'date': '2024-06-01',
      'source': 'The New York Times',
      'sourceImg': 'assets/images/nyt.png'
    },
    {
      'image': 'assets/images/tech.png',
      'tag': 'Technology',
      'title': 'Apple to Acquire Tesla',
      'date': '2024-06-04',
      'source': 'BBC',
      'sourceImg': 'assets/images/bbc.png'
    },
    {
      'image': 'assets/images/dry.png',
      'tag': 'Environment',
      'title': 'The Great Barrier Reef is dying',
      'date': '2024-07-01',
      'source': 'reuters',
      'sourceImg': 'assets/images/reuters.png'
    },
    {
      'image': 'assets/images/pc.png',
      'tag': 'Electronics',
      'title': 'MacBook Pro 2024 is the best laptop',
      'date': '2024-07-07',
      'source': 'Forbes',
      'sourceImg': 'assets/images/forbes.png'
    },
    {
      'image': 'assets/images/tree.png',
      'tag': 'Sports',
      'title': 'Trump says he will not run for president',
      'date': '2022-06-01',
      'source': 'ABC',
      'sourceImg': 'assets/images/abc.png'
    },
  ];
}
