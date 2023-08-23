import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takehome/favorites/view/bloc/favorites_bloc.dart';
import 'package:takehome/news/view/model/news_article_view_model.dart';
import 'package:takehome/news/view/page/article_content.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key, required this.model});
  final NewsArticleViewModel model;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  void _onPressed(BuildContext context) {
    print('ArticlePage _onFavPressed, model: ${widget.model}');
    if (widget.model.isFavorite) {
      context.read<FavoritesBloc>().add(FavoritesEvent.unfavorite(widget.model));
    } else {
      context.read<FavoritesBloc>().add(FavoritesEvent.favorite(widget.model));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Article'),
          actions: [
            IconButton(
              onPressed: () => _onPressed(context),
              icon: Icon(
                Icons.favorite,
                color: widget.model.isFavorite ? Colors.red : Colors.grey,
              ),
            )
          ],
        ),
        body: ArticleContent(model: widget.model));
  }
}
