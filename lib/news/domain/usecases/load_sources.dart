import 'package:injectable/injectable.dart';
import 'package:takehome/news/data/repo/news_repository.dart';
import 'package:takehome/news/domain/models/sources_model.dart';

@Injectable()
class LoadSourcesUC {
  final NewsRepository _newsRepository;

  LoadSourcesUC(this._newsRepository);
  Future<SourcesModel> call() async {
    final result = await _newsRepository.getSources();

    return SourcesModel(sources: result.sources.map((e) => e.toModel()).toList());
  }
}
