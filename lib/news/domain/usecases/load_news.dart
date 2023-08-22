import 'package:injectable/injectable.dart';
import 'package:takehome/news/domain/models/news_model.dart';

@Injectable()
class LoadNewsUC {
  NewsModel call() {
    return NewsModel();
  }
}
