import 'package:flutter/material.dart';
import 'package:takehome/news/view/model/news_view_model.dart';
import 'package:takehome/shared/view/widgets/article_item.dart';

class NewsContent extends StatelessWidget {
  final NewsViewModel model;
  const NewsContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    // print(' model.sections.length: ${model.sections.length}');

    return ListView.builder(
      itemBuilder: (context, index) {
        // print('NewsContent, itemBuilder, index: $index.');

        return ArticleItem(model: model.articles[index]);
      },
      itemCount: model.articles.length,
    );
  }
}
