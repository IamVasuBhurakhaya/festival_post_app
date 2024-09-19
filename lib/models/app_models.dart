class AppModels {
  String quote, author, category, popularity;
  int quotes_like, quotes_share;

  AppModels(
    this.quote,
    this.author,
    this.category,
    this.quotes_like,
    this.quotes_share,
    this.popularity,
  );

  factory AppModels.fromMap({required Map data}) => AppModels(
        data['quote'],
        data['author'],
        data['category'],
        data['quotes_like'],
        data['quotes_share'],
        data['popularity'],
      );

  Map<String, dynamic> get toMap => {
        'quote': quote,
        'author': author,
        'category': category,
        'quotes_like': quotes_like,
        'quotes_share': quotes_share,
        'popularity': popularity,
      };
}
