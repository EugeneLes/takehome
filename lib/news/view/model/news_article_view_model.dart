class NewsArticleVM {
  final String title;
  final String text;
  final bool isFavorite;

  NewsArticleVM(this.title, this.text, {this.isFavorite = false});

  @override
  String toString() {
    return 'NewsArticle(title:$title, text:$text, isFavorite:$isFavorite)';
  }
}
