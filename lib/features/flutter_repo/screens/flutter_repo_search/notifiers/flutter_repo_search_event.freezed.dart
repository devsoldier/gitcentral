// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_repo_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlutterRepoSearchEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchRepo,
    required TResult Function(String? query) fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchRepo,
    TResult? Function(String? query)? fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchRepo,
    TResult Function(String? query)? fetchMoreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepo value) searchRepo,
    required TResult Function(FetchMoreSearchItems value) fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepo value)? searchRepo,
    TResult? Function(FetchMoreSearchItems value)? fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepo value)? searchRepo,
    TResult Function(FetchMoreSearchItems value)? fetchMoreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterRepoSearchEventCopyWith<FlutterRepoSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterRepoSearchEventCopyWith<$Res> {
  factory $FlutterRepoSearchEventCopyWith(FlutterRepoSearchEvent value,
          $Res Function(FlutterRepoSearchEvent) then) =
      _$FlutterRepoSearchEventCopyWithImpl<$Res, FlutterRepoSearchEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$FlutterRepoSearchEventCopyWithImpl<$Res,
        $Val extends FlutterRepoSearchEvent>
    implements $FlutterRepoSearchEventCopyWith<$Res> {
  _$FlutterRepoSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepoImplCopyWith<$Res>
    implements $FlutterRepoSearchEventCopyWith<$Res> {
  factory _$$SearchRepoImplCopyWith(
          _$SearchRepoImpl value, $Res Function(_$SearchRepoImpl) then) =
      __$$SearchRepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$SearchRepoImplCopyWithImpl<$Res>
    extends _$FlutterRepoSearchEventCopyWithImpl<$Res, _$SearchRepoImpl>
    implements _$$SearchRepoImplCopyWith<$Res> {
  __$$SearchRepoImplCopyWithImpl(
      _$SearchRepoImpl _value, $Res Function(_$SearchRepoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$SearchRepoImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchRepoImpl implements SearchRepo {
  const _$SearchRepoImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FlutterRepoSearchEvent.searchRepo(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepoImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepoImplCopyWith<_$SearchRepoImpl> get copyWith =>
      __$$SearchRepoImplCopyWithImpl<_$SearchRepoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchRepo,
    required TResult Function(String? query) fetchMoreItems,
  }) {
    return searchRepo(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchRepo,
    TResult? Function(String? query)? fetchMoreItems,
  }) {
    return searchRepo?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchRepo,
    TResult Function(String? query)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (searchRepo != null) {
      return searchRepo(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepo value) searchRepo,
    required TResult Function(FetchMoreSearchItems value) fetchMoreItems,
  }) {
    return searchRepo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepo value)? searchRepo,
    TResult? Function(FetchMoreSearchItems value)? fetchMoreItems,
  }) {
    return searchRepo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepo value)? searchRepo,
    TResult Function(FetchMoreSearchItems value)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (searchRepo != null) {
      return searchRepo(this);
    }
    return orElse();
  }
}

abstract class SearchRepo implements FlutterRepoSearchEvent {
  const factory SearchRepo({final String? query}) = _$SearchRepoImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepoImplCopyWith<_$SearchRepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreSearchItemsImplCopyWith<$Res>
    implements $FlutterRepoSearchEventCopyWith<$Res> {
  factory _$$FetchMoreSearchItemsImplCopyWith(_$FetchMoreSearchItemsImpl value,
          $Res Function(_$FetchMoreSearchItemsImpl) then) =
      __$$FetchMoreSearchItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$FetchMoreSearchItemsImplCopyWithImpl<$Res>
    extends _$FlutterRepoSearchEventCopyWithImpl<$Res,
        _$FetchMoreSearchItemsImpl>
    implements _$$FetchMoreSearchItemsImplCopyWith<$Res> {
  __$$FetchMoreSearchItemsImplCopyWithImpl(_$FetchMoreSearchItemsImpl _value,
      $Res Function(_$FetchMoreSearchItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$FetchMoreSearchItemsImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchMoreSearchItemsImpl implements FetchMoreSearchItems {
  const _$FetchMoreSearchItemsImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'FlutterRepoSearchEvent.fetchMoreItems(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoreSearchItemsImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoreSearchItemsImplCopyWith<_$FetchMoreSearchItemsImpl>
      get copyWith =>
          __$$FetchMoreSearchItemsImplCopyWithImpl<_$FetchMoreSearchItemsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) searchRepo,
    required TResult Function(String? query) fetchMoreItems,
  }) {
    return fetchMoreItems(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? searchRepo,
    TResult? Function(String? query)? fetchMoreItems,
  }) {
    return fetchMoreItems?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? searchRepo,
    TResult Function(String? query)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (fetchMoreItems != null) {
      return fetchMoreItems(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRepo value) searchRepo,
    required TResult Function(FetchMoreSearchItems value) fetchMoreItems,
  }) {
    return fetchMoreItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchRepo value)? searchRepo,
    TResult? Function(FetchMoreSearchItems value)? fetchMoreItems,
  }) {
    return fetchMoreItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRepo value)? searchRepo,
    TResult Function(FetchMoreSearchItems value)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (fetchMoreItems != null) {
      return fetchMoreItems(this);
    }
    return orElse();
  }
}

abstract class FetchMoreSearchItems implements FlutterRepoSearchEvent {
  const factory FetchMoreSearchItems({final String? query}) =
      _$FetchMoreSearchItemsImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$FetchMoreSearchItemsImplCopyWith<_$FetchMoreSearchItemsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
