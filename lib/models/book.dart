enum Interest {
  Boring,
  Okay,
  Interesting,
}

class Book {
  final int bookId;
  final List<int> bookCategories;
  final String title;
  final String imageUrl;
  final List<String> metadata;
  final String summary;
  final int rating;
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
    this.isAuthorWoman = false,
    this.isAuthorEthnic = false,
    this.isControversial = false,
  });
}
