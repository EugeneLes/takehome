import 'package:injectable/injectable.dart';
import 'package:takehome/favorites/data/repo/favorites_repository.dart';
import 'package:takehome/news/domain/models/article_model.dart';

@Injectable()
class WatchFavoritesUC {
  final FavoritesRepository _repo;

  WatchFavoritesUC(this._repo);
  Stream<List<ArticleModel>> call() {
    return _repo.watchFavorites().map((list) => list.map((e) => e.toModel()).toList());
  }
}
