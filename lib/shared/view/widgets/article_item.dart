import 'package:flutter/material.dart';
import 'package:takehome/news/view/model/news_article.dart';

class ArticleItem extends StatelessWidget {
  final NewsArticle model;
  const ArticleItem({super.key, required this.model});

  _onFavPressed() {
    print('ArticleItem _onFavPressed, model: $model');
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Text(model.title),
              Text(model.text),
            ],
          ),
          IconButton(
            onPressed: _onFavPressed,
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
