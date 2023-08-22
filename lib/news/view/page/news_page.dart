import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takehome/news/view/bloc/news_bloc.dart';
import 'package:takehome/news/view/page/news_content.dart';

import '../../../shared/di/di.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key, required this.source});
  final String source;

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with AutomaticKeepAliveClientMixin<NewsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: BlocProvider(
        create: (context) => get<NewsBloc>()..init(widget.source),
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) => state.when(
            initial: () => const SizedBox(),
            loading: () => const CircularProgressIndicator.adaptive(),
            loaded: (uiModel) {
              return NewsContent(model: uiModel);
            },
          ),
        ),
      ),
    );
  }
}
