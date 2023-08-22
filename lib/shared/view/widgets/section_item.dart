import 'package:flutter/material.dart';
import 'package:takehome/news/view/model/news_section.dart';
import 'package:takehome/shared/view/widgets/article_item.dart';

class SectionItem extends StatelessWidget {
  final NewsSection section;
  const SectionItem({super.key, required this.section});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Text(section.title),
        ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) => ArticleItem(model: section.articles[index]),
          itemCount: section.articles.length,
        ),
      ],
    );
  }
}
