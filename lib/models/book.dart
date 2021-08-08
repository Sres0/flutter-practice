// import 'package:flutter/material.dart';
enum Rating {
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
  final int bookId;
  final List<String> bookCategories;
  final String title;
  final String imageUrl;
  final List<String> metadata;
  final String summary;
  final Rating rating;
  final Interest interest;
  final bool isAuthorWoman;
  final bool isAuthorEthnic;
  final bool isControversial;

  const Book({
    required this.bookId,
    required this.bookCategories,
    required this.title,
    required this.imageUrl,
    required this.metadata,
    required this.summary,
    required this.rating,
    required this.interest,
    required this.isAuthorWoman,
    required this.isAuthorEthnic,
    required this.isControversial,
  });
}
