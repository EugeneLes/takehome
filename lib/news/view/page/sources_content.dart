import 'package:flutter/material.dart';
import 'package:takehome/news/view/model/sources_view_model.dart';
import 'package:takehome/shared/view/widgets/source_item.dart';

class SourcesContent extends StatelessWidget {
  final SourcesViewModel model;
  const SourcesContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    // print(' model.sections.length: ${model.sections.length}');

    return ListView.builder(
      itemBuilder: (context, index) {
        // print('NewsContent, itemBuilder, index: $index.');

        return SourceItem(model: model.sources[index]);
      },
      itemCount: model.sources.length,
    );
  }
}
