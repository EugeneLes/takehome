import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:takehome/news/domain/usecases/load_news.dart';
import 'package:takehome/news/view/model/news_article_view_model.dart';
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

  init(String source) {
    add(NewsEvent.load(source));
  }

  _loadNews(Emitter emit) {
    _loadNewsUC.call('id1');
    emit(
      NewsState.loaded(
        NewsViewModel([
          NewsArticleVM('article1', 'text1'),
          NewsArticleVM('article2', 'text2'),
          NewsArticleVM('article3', 'text3'),
          NewsArticleVM('article4', 'text4'),
          NewsArticleVM('article5', 'text5'),
          NewsArticleVM('article6', 'text6'),
          NewsArticleVM('article7', 'text7'),
          NewsArticleVM('article8', 'text8'),
          NewsArticleVM('article9', 'text9'),
          NewsArticleVM('article10', 'text10'),
          NewsArticleVM('article11', 'text11'),
          NewsArticleVM('article12', 'text12'),
        ]),
      ),
    );
  }

  _markArticle(_NewsFavoriteEvent event, Emitter emit) {}
}
