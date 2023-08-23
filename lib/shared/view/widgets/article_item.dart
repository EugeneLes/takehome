import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takehome/favorites/view/bloc/favorites_bloc.dart';
import 'package:takehome/news/view/model/news_article_view_model.dart';
import 'package:takehome/routing/routes.dart';

class ArticleItem extends StatelessWidget {
  final NewsArticleViewModel model;
  final bool isInFavorites;
  const ArticleItem({
    super.key,
    required this.model,
    this.isInFavorites = false,
  });

  _onFavPressed(BuildContext context) {
    if (isInFavorites || model.isFavorite) {
      context.read<FavoritesBloc>().add(FavoritesEvent.unfavorite(model));
    } else {
      context.read<FavoritesBloc>().add(FavoritesEvent.favorite(model));
    }
  }

  _onCardPressed(BuildContext context) {
    ArticleRoute(model.source.id, $extra: model).go(context);
    print('ArticleItem _onFavPressed, model: $model');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => _onCardPressed(context),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.title),
                    Text(model.author),
                    Text(model.publishedAt),
                    Text(model.description),
                  ],
                ),
              ),
            ),
            IconButton(
              padding: const EdgeInsets.symmetric(vertical: 20),
              onPressed: () => _onFavPressed(context),
              icon: isInFavorites
                  ? const Icon(Icons.delete_forever_rounded)
                  : Icon(
                      Icons.favorite,
                      color: model.isFavorite ? Colors.red : Colors.grey,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
