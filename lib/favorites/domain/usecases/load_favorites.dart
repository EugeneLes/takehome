import 'package:injectable/injectable.dart';
import 'package:takehome/favorites/data/repo/favorites_repository.dart';
import 'package:takehome/news/domain/models/article_model.dart';

@Injectable()
class LoadFavoritesUC {
  final FavoritesRepository _repo;

  LoadFavoritesUC(this._repo);
  Future<List<ArticleModel>> call() {
    return _repo.getFavorites();
  }
}
