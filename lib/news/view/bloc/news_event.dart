part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.favorite(String articleId) = _NewsFavoriteEvent;

  const factory NewsEvent.load() = _NewsLoadEvent;
}
