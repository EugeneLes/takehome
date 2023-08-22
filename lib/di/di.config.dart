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
import 'package:takehome/news/data/repo/news_repository.dart' as _i3;
import 'package:takehome/news/domain/usecases/load_news.dart' as _i4;
import 'package:takehome/news/domain/usecases/load_sources.dart' as _i5;
import 'package:takehome/news/view/bloc/news_bloc.dart' as _i6;
import 'package:takehome/news/view/bloc/sources_bloc.dart' as _i7;

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
    await gh.lazySingletonAsync<_i3.NewsRepository>(
      () {
        final i = _i3.NewsRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i4.LoadNewsUC>(() => _i4.LoadNewsUC(gh<_i3.NewsRepository>()));
    gh.factory<_i5.LoadSourcesUC>(
        () => _i5.LoadSourcesUC(gh<_i3.NewsRepository>()));
    gh.factory<_i6.NewsBloc>(() => _i6.NewsBloc(gh<_i4.LoadNewsUC>()));
    gh.factory<_i7.SourcesBloc>(() => _i7.SourcesBloc(gh<_i5.LoadSourcesUC>()));
    return this;
  }
}
