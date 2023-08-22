import 'package:injectable/injectable.dart';
import 'package:takehome/news/data/datasource/news_api.dart';
import 'package:takehome/news/data/models/sources_dto.dart';

@LazySingleton()
class NewsRepository {
  late final NewsApi newsApi;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    newsApi = NewsApi.create();
  }

  Future<void> getNews() async {
    final result = await newsApi.getEverything();
    print('result: $result');
  }

  Future<void> getTopHeadlines(
    String? sources,
    int? pageSize,
    int? page,
  ) async {
    final result = await newsApi.getTopHeadlines(
      sources: sources,
      pageSize: pageSize,
      page: page,
    );
    print('getTopHeadlines result: $result');
  }

  Future<SourcesDTO> getSources() async {
    final result = await newsApi.getSources();

    print('getSources result.body: ${result.body}');
    final sources = SourcesDTO.fromJson(result.body);
    return sources;
  }
}
