part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _NewsInitialState;
  const factory NewsState.loading() = _NewsLoadingState;

  const factory NewsState.loaded(NewsViewModel viewModel) = _NewsLoadedState;
}
