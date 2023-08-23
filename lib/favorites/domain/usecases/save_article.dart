import 'package:injectable/injectable.dart';
import 'package:takehome/favorites/data/repo/favorites_repository.dart';
import 'package:takehome/favorites/domain/models/extensions.dart';
import 'package:takehome/news/domain/models/article_model.dart';

@Injectable()
class SaveArticleUC {
  final FavoritesRepository _repo;

  SaveArticleUC(this._repo);
  Future<int> call(ArticleModel article) {
    return _repo.saveArticle(article.toIsarModel());
  }
}
