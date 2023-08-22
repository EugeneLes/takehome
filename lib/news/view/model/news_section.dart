import 'package:takehome/news/view/model/news_article.dart';

class NewsSection {
  final String title;
  final List<NewsArticle> articles;

  NewsSection(this.title, this.articles);

  @override
  String toString() {
    return 'NewsSection(title:$title, articles:$articles)';
  }
}
