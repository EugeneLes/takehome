import 'package:injectable/injectable.dart';
import 'package:takehome/news/data/models/source_dto.dart';
import 'package:takehome/news/data/repo/news_repository.dart';
import 'package:takehome/news/domain/models/source_model.dart';
import 'package:takehome/news/domain/models/sources_model.dart';

@Injectable()
class LoadSourcesUC {
  final NewsRepository _newsRepository;

  LoadSourcesUC(this._newsRepository);
  Future<SourcesModel> call() async {
    print('___LoadNewsUC call');
    final result = await _newsRepository.getSources();

    return SourcesModel(sources: result.sources.map((e) => e.toModel()).toList());
  }
}

extension SourceX on SourceDTO {
  SourceModel toModel() => SourceModel(
        id: id,
        name: name,
        description: description,
        url: url,
        category: category,
        language: language,
        country: country,
      );
}
