import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:takehome/news/domain/usecases/load_news.dart';
import 'package:takehome/news/view/model/news_article.dart';
import 'package:takehome/news/view/model/news_section.dart';
import 'package:takehome/news/view/model/news_view_model.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

@Injectable()
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final LoadNewsUC _loadNewsUC;

  NewsBloc(
    this._loadNewsUC,
  ) : super(
          const NewsState.initial(),
        ) {
    on<_NewsLoadEvent>((_, emit) => _loadNews(emit));
    on<_NewsFavoriteEvent>((event, emit) => _markArticle(event, emit));
  }

  init() {
    add(const NewsEvent.load());
  }

  _loadNews(Emitter emit) {
    _loadNewsUC.call();
    emit(
      NewsState.loaded(
        NewsViewModel([
          NewsSection('title1', [
            NewsArticle('article1', 'text1'),
            NewsArticle('article2', 'text2'),
            NewsArticle('article3', 'text3'),
            NewsArticle('article4', 'text4'),
          ]),
          NewsSection('title2', [
            NewsArticle('article1', 'text1'),
            NewsArticle('article2', 'text2'),
            NewsArticle('article3', 'text3'),
            NewsArticle('article4', 'text4'),
          ]),
          NewsSection('title3', [
            NewsArticle('article1', 'text1'),
            NewsArticle('article2', 'text2'),
            NewsArticle('article3', 'text3'),
            NewsArticle('article4', 'text4'),
          ]),
        ]),
      ),
    );
  }

  _markArticle(_NewsFavoriteEvent event, Emitter emit) {}
}
