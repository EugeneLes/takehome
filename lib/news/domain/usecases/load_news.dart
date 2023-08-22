import 'package:injectable/injectable.dart';
import 'package:takehome/news/data/repo/news_repository.dart';
import 'package:takehome/news/domain/models/news_model.dart';

@Injectable()
class LoadNewsUC {
  final NewsRepository _newsRepository;

  LoadNewsUC(this._newsRepository);
  Future<NewsModel> call(String sourceId) async {
    print('___LoadNewsUC call');
    final result = await _newsRepository.getNews();

    return NewsModel();
  }
}
