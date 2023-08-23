// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:takehome/favorites/data/datasource/local_storage.dart' as _i3;
import 'package:takehome/favorites/data/repo/favorites_repository.dart' as _i5;
import 'package:takehome/favorites/domain/usecases/load_favorites.dart' as _i6;
import 'package:takehome/favorites/domain/usecases/remove_article.dart' as _i9;
import 'package:takehome/favorites/domain/usecases/save_article.dart' as _i10;
import 'package:takehome/favorites/domain/usecases/watch_favorites.dart'
    as _i12;
import 'package:takehome/favorites/view/bloc/favorites_bloc.dart' as _i13;
import 'package:takehome/news/data/repo/news_repository.dart' as _i4;
import 'package:takehome/news/domain/usecases/load_news.dart' as _i7;
import 'package:takehome/news/domain/usecases/load_sources.dart' as _i8;
import 'package:takehome/news/view/bloc/news_bloc.dart' as _i14;
import 'package:takehome/news/view/bloc/sources_bloc.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.lazySingletonAsync<_i3.LocalStorage>(
      () {
        final i = _i3.LocalStorage();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i4.NewsRepository>(
      () {
        final i = _i4.NewsRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i5.FavoritesRepository>(
        () => _i5.FavoritesRepository(gh<_i3.LocalStorage>()));
    gh.factory<_i6.LoadFavoritesUC>(
        () => _i6.LoadFavoritesUC(gh<_i5.FavoritesRepository>()));
    gh.factory<_i7.LoadNewsUC>(() => _i7.LoadNewsUC(
          gh<_i4.NewsRepository>(),
          gh<_i5.FavoritesRepository>(),
        ));
    gh.factory<_i8.LoadSourcesUC>(
        () => _i8.LoadSourcesUC(gh<_i4.NewsRepository>()));
    gh.factory<_i9.RemoveArticleUC>(
        () => _i9.RemoveArticleUC(gh<_i5.FavoritesRepository>()));
    gh.factory<_i10.SaveArticleUC>(
        () => _i10.SaveArticleUC(gh<_i5.FavoritesRepository>()));
    gh.factory<_i11.SourcesBloc>(
        () => _i11.SourcesBloc(gh<_i8.LoadSourcesUC>()));
    gh.factory<_i12.WatchFavoritesUC>(
        () => _i12.WatchFavoritesUC(gh<_i5.FavoritesRepository>()));
    gh.factory<_i13.FavoritesBloc>(() => _i13.FavoritesBloc(
          gh<_i6.LoadFavoritesUC>(),
          gh<_i9.RemoveArticleUC>(),
          gh<_i10.SaveArticleUC>(),
          gh<_i12.WatchFavoritesUC>(),
        ));
    gh.factory<_i14.NewsBloc>(() => _i14.NewsBloc(
          gh<_i7.LoadNewsUC>(),
          gh<_i12.WatchFavoritesUC>(),
        ));
    return this;
  }
}
