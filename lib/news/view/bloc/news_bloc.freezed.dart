// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsFavoriteEvent value) favorite,
    required TResult Function(_NewsLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsFavoriteEvent value)? favorite,
    TResult? Function(_NewsLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsFavoriteEvent value)? favorite,
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewsFavoriteEventCopyWith<$Res> {
  factory _$$_NewsFavoriteEventCopyWith(_$_NewsFavoriteEvent value,
          $Res Function(_$_NewsFavoriteEvent) then) =
      __$$_NewsFavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$_NewsFavoriteEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_NewsFavoriteEvent>
    implements _$$_NewsFavoriteEventCopyWith<$Res> {
  __$$_NewsFavoriteEventCopyWithImpl(
      _$_NewsFavoriteEvent _value, $Res Function(_$_NewsFavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$_NewsFavoriteEvent(
      null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewsFavoriteEvent implements _NewsFavoriteEvent {
  const _$_NewsFavoriteEvent(this.articleId);

  @override
  final String articleId;

  @override
  String toString() {
    return 'NewsEvent.favorite(articleId: $articleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFavoriteEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFavoriteEventCopyWith<_$_NewsFavoriteEvent> get copyWith =>
      __$$_NewsFavoriteEventCopyWithImpl<_$_NewsFavoriteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) {
    return favorite(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) {
    return favorite?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsFavoriteEvent value) favorite,
    required TResult Function(_NewsLoadEvent value) load,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsFavoriteEvent value)? favorite,
    TResult? Function(_NewsLoadEvent value)? load,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsFavoriteEvent value)? favorite,
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _NewsFavoriteEvent implements NewsEvent {
  const factory _NewsFavoriteEvent(final String articleId) =
      _$_NewsFavoriteEvent;

  String get articleId;
  @JsonKey(ignore: true)
  _$$_NewsFavoriteEventCopyWith<_$_NewsFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewsLoadEventCopyWith<$Res> {
  factory _$$_NewsLoadEventCopyWith(
          _$_NewsLoadEvent value, $Res Function(_$_NewsLoadEvent) then) =
      __$$_NewsLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsLoadEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_NewsLoadEvent>
    implements _$$_NewsLoadEventCopyWith<$Res> {
  __$$_NewsLoadEventCopyWithImpl(
      _$_NewsLoadEvent _value, $Res Function(_$_NewsLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsLoadEvent implements _NewsLoadEvent {
  const _$_NewsLoadEvent();

  @override
  String toString() {
    return 'NewsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsFavoriteEvent value) favorite,
    required TResult Function(_NewsLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsFavoriteEvent value)? favorite,
    TResult? Function(_NewsLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsFavoriteEvent value)? favorite,
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _NewsLoadEvent implements NewsEvent {
  const factory _NewsLoadEvent() = _$_NewsLoadEvent;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsInitialState value) initial,
    required TResult Function(_NewsLoadingState value) loading,
    required TResult Function(_NewsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsInitialState value)? initial,
    TResult? Function(_NewsLoadingState value)? loading,
    TResult? Function(_NewsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsInitialState value)? initial,
    TResult Function(_NewsLoadingState value)? loading,
    TResult Function(_NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewsInitialStateCopyWith<$Res> {
  factory _$$_NewsInitialStateCopyWith(
          _$_NewsInitialState value, $Res Function(_$_NewsInitialState) then) =
      __$$_NewsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsInitialStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsInitialState>
    implements _$$_NewsInitialStateCopyWith<$Res> {
  __$$_NewsInitialStateCopyWithImpl(
      _$_NewsInitialState _value, $Res Function(_$_NewsInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsInitialState implements _NewsInitialState {
  const _$_NewsInitialState();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsInitialState value) initial,
    required TResult Function(_NewsLoadingState value) loading,
    required TResult Function(_NewsLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsInitialState value)? initial,
    TResult? Function(_NewsLoadingState value)? loading,
    TResult? Function(_NewsLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsInitialState value)? initial,
    TResult Function(_NewsLoadingState value)? loading,
    TResult Function(_NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NewsInitialState implements NewsState {
  const factory _NewsInitialState() = _$_NewsInitialState;
}

/// @nodoc
abstract class _$$_NewsLoadingStateCopyWith<$Res> {
  factory _$$_NewsLoadingStateCopyWith(
          _$_NewsLoadingState value, $Res Function(_$_NewsLoadingState) then) =
      __$$_NewsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsLoadingStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsLoadingState>
    implements _$$_NewsLoadingStateCopyWith<$Res> {
  __$$_NewsLoadingStateCopyWithImpl(
      _$_NewsLoadingState _value, $Res Function(_$_NewsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsLoadingState implements _NewsLoadingState {
  const _$_NewsLoadingState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsInitialState value) initial,
    required TResult Function(_NewsLoadingState value) loading,
    required TResult Function(_NewsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsInitialState value)? initial,
    TResult? Function(_NewsLoadingState value)? loading,
    TResult? Function(_NewsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsInitialState value)? initial,
    TResult Function(_NewsLoadingState value)? loading,
    TResult Function(_NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewsLoadingState implements NewsState {
  const factory _NewsLoadingState() = _$_NewsLoadingState;
}

/// @nodoc
abstract class _$$_NewsLoadedStateCopyWith<$Res> {
  factory _$$_NewsLoadedStateCopyWith(
          _$_NewsLoadedState value, $Res Function(_$_NewsLoadedState) then) =
      __$$_NewsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsViewModel viewModel});
}

/// @nodoc
class __$$_NewsLoadedStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsLoadedState>
    implements _$$_NewsLoadedStateCopyWith<$Res> {
  __$$_NewsLoadedStateCopyWithImpl(
      _$_NewsLoadedState _value, $Res Function(_$_NewsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$_NewsLoadedState(
      null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as NewsViewModel,
    ));
  }
}

/// @nodoc

class _$_NewsLoadedState implements _NewsLoadedState {
  const _$_NewsLoadedState(this.viewModel);

  @override
  final NewsViewModel viewModel;

  @override
  String toString() {
    return 'NewsState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsLoadedStateCopyWith<_$_NewsLoadedState> get copyWith =>
      __$$_NewsLoadedStateCopyWithImpl<_$_NewsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsInitialState value) initial,
    required TResult Function(_NewsLoadingState value) loading,
    required TResult Function(_NewsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsInitialState value)? initial,
    TResult? Function(_NewsLoadingState value)? loading,
    TResult? Function(_NewsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsInitialState value)? initial,
    TResult Function(_NewsLoadingState value)? loading,
    TResult Function(_NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _NewsLoadedState implements NewsState {
  const factory _NewsLoadedState(final NewsViewModel viewModel) =
      _$_NewsLoadedState;

  NewsViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$_NewsLoadedStateCopyWith<_$_NewsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}