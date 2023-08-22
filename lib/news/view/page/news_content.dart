import 'package:flutter/material.dart';
import 'package:takehome/news/view/model/news_view_model.dart';
import 'package:takehome/shared/view/widgets/section_item.dart';

class NewsContent extends StatelessWidget {
  final NewsViewModel model;
  const NewsContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {

        return SectionItem(section: model.sections[index]);
      },
      itemCount: model.sections.length,
    );
  }
}
