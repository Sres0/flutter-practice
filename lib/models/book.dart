// import 'package:flutter/material.dart';
enum Stars {
  OneStar,
  TwoStars,
  ThreeStars,
  FourStars,
  FiveStars,
}

enum Interest {
  HellNo,
  Meh,
  Okay,
  SoundsInteresting,
  HellYeah,
}

class Book {
  final int id;
  final List<String> bookCategories;
  final String title;
  final String imageUrl;
  final List<String> metadata;
  final String summary;
  final Stars stars;
  final Interest interest;
  final bool isAuthorWoman;
  final bool isAuthorEthnic;
  final bool isRightWing;

  const Book({
    required this.id,
    required this.bookCategories,
    required this.title,
    required this.imageUrl,
    required this.metadata,
    required this.summary,
    required this.stars,
    required this.interest,
    required this.isAuthorWoman,
    required this.isAuthorEthnic,
    required this.isRightWing,
  });
}
