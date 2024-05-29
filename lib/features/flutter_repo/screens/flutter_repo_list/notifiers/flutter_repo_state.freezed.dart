// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_repo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlutterRepoState {
  ApiStatus? get status => throw _privateConstructorUsedError;
  List<FlutterRepoResponse>? get flutterRepoList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterRepoStateCopyWith<FlutterRepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterRepoStateCopyWith<$Res> {
  factory $FlutterRepoStateCopyWith(
          FlutterRepoState value, $Res Function(FlutterRepoState) then) =
      _$FlutterRepoStateCopyWithImpl<$Res, FlutterRepoState>;
  @useResult
  $Res call({ApiStatus? status, List<FlutterRepoResponse>? flutterRepoList});

  $ApiStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$FlutterRepoStateCopyWithImpl<$Res, $Val extends FlutterRepoState>
    implements $FlutterRepoStateCopyWith<$Res> {
  _$FlutterRepoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? flutterRepoList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      flutterRepoList: freezed == flutterRepoList
          ? _value.flutterRepoList
          : flutterRepoList // ignore: cast_nullable_to_non_nullable
              as List<FlutterRepoResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $ApiStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlutterRepoStateImplCopyWith<$Res>
    implements $FlutterRepoStateCopyWith<$Res> {
  factory _$$FlutterRepoStateImplCopyWith(_$FlutterRepoStateImpl value,
          $Res Function(_$FlutterRepoStateImpl) then) =
      __$$FlutterRepoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus? status, List<FlutterRepoResponse>? flutterRepoList});

  @override
  $ApiStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$FlutterRepoStateImplCopyWithImpl<$Res>
    extends _$FlutterRepoStateCopyWithImpl<$Res, _$FlutterRepoStateImpl>
    implements _$$FlutterRepoStateImplCopyWith<$Res> {
  __$$FlutterRepoStateImplCopyWithImpl(_$FlutterRepoStateImpl _value,
      $Res Function(_$FlutterRepoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? flutterRepoList = freezed,
  }) {
    return _then(_$FlutterRepoStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus?,
      flutterRepoList: freezed == flutterRepoList
          ? _value._flutterRepoList
          : flutterRepoList // ignore: cast_nullable_to_non_nullable
              as List<FlutterRepoResponse>?,
    ));
  }
}

/// @nodoc

class _$FlutterRepoStateImpl implements _FlutterRepoState {
  _$FlutterRepoStateImpl(
      {this.status = const ApiStatus.loading(),
      final List<FlutterRepoResponse>? flutterRepoList})
      : _flutterRepoList = flutterRepoList;

  @override
  @JsonKey()
  final ApiStatus? status;
  final List<FlutterRepoResponse>? _flutterRepoList;
  @override
  List<FlutterRepoResponse>? get flutterRepoList {
    final value = _flutterRepoList;
    if (value == null) return null;
    if (_flutterRepoList is EqualUnmodifiableListView) return _flutterRepoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FlutterRepoState(status: $status, flutterRepoList: $flutterRepoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlutterRepoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._flutterRepoList, _flutterRepoList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_flutterRepoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlutterRepoStateImplCopyWith<_$FlutterRepoStateImpl> get copyWith =>
      __$$FlutterRepoStateImplCopyWithImpl<_$FlutterRepoStateImpl>(
          this, _$identity);
}

abstract class _FlutterRepoState implements FlutterRepoState {
  factory _FlutterRepoState(
          {final ApiStatus? status,
          final List<FlutterRepoResponse>? flutterRepoList}) =
      _$FlutterRepoStateImpl;

  @override
  ApiStatus? get status;
  @override
  List<FlutterRepoResponse>? get flutterRepoList;
  @override
  @JsonKey(ignore: true)
  _$$FlutterRepoStateImplCopyWith<_$FlutterRepoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApiStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStatusCopyWith<$Res> {
  factory $ApiStatusCopyWith(ApiStatus value, $Res Function(ApiStatus) then) =
      _$ApiStatusCopyWithImpl<$Res, ApiStatus>;
}

/// @nodoc
class _$ApiStatusCopyWithImpl<$Res, $Val extends ApiStatus>
    implements $ApiStatusCopyWith<$Res> {
  _$ApiStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiInitialImplCopyWith<$Res> {
  factory _$$ApiInitialImplCopyWith(
          _$ApiInitialImpl value, $Res Function(_$ApiInitialImpl) then) =
      __$$ApiInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiInitialImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiInitialImpl>
    implements _$$ApiInitialImplCopyWith<$Res> {
  __$$ApiInitialImplCopyWithImpl(
      _$ApiInitialImpl _value, $Res Function(_$ApiInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiInitialImpl implements ApiInitial {
  const _$ApiInitialImpl();

  @override
  String toString() {
    return 'ApiStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
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
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ApiInitial implements ApiStatus {
  const factory ApiInitial() = _$ApiInitialImpl;
}

/// @nodoc
abstract class _$$ApiLoadingImplCopyWith<$Res> {
  factory _$$ApiLoadingImplCopyWith(
          _$ApiLoadingImpl value, $Res Function(_$ApiLoadingImpl) then) =
      __$$ApiLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiLoadingImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiLoadingImpl>
    implements _$$ApiLoadingImplCopyWith<$Res> {
  __$$ApiLoadingImplCopyWithImpl(
      _$ApiLoadingImpl _value, $Res Function(_$ApiLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiLoadingImpl implements ApiLoading {
  const _$ApiLoadingImpl();

  @override
  String toString() {
    return 'ApiStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
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
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ApiLoading implements ApiStatus {
  const factory ApiLoading() = _$ApiLoadingImpl;
}

/// @nodoc
abstract class _$$ApiLoadedImplCopyWith<$Res> {
  factory _$$ApiLoadedImplCopyWith(
          _$ApiLoadedImpl value, $Res Function(_$ApiLoadedImpl) then) =
      __$$ApiLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiLoadedImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiLoadedImpl>
    implements _$$ApiLoadedImplCopyWith<$Res> {
  __$$ApiLoadedImplCopyWithImpl(
      _$ApiLoadedImpl _value, $Res Function(_$ApiLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiLoadedImpl implements ApiLoaded {
  const _$ApiLoadedImpl();

  @override
  String toString() {
    return 'ApiStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ApiLoaded implements ApiStatus {
  const factory ApiLoaded() = _$ApiLoadedImpl;
}

/// @nodoc
abstract class _$$ApiServerErrorImplCopyWith<$Res> {
  factory _$$ApiServerErrorImplCopyWith(_$ApiServerErrorImpl value,
          $Res Function(_$ApiServerErrorImpl) then) =
      __$$ApiServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiServerErrorImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiServerErrorImpl>
    implements _$$ApiServerErrorImplCopyWith<$Res> {
  __$$ApiServerErrorImplCopyWithImpl(
      _$ApiServerErrorImpl _value, $Res Function(_$ApiServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiServerErrorImpl implements ApiServerError {
  const _$ApiServerErrorImpl();

  @override
  String toString() {
    return 'ApiStatus.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ApiServerError implements ApiStatus {
  const factory ApiServerError() = _$ApiServerErrorImpl;
}

/// @nodoc
abstract class _$$ApiOtherExceptionImplCopyWith<$Res> {
  factory _$$ApiOtherExceptionImplCopyWith(_$ApiOtherExceptionImpl value,
          $Res Function(_$ApiOtherExceptionImpl) then) =
      __$$ApiOtherExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiOtherExceptionImplCopyWithImpl<$Res>
    extends _$ApiStatusCopyWithImpl<$Res, _$ApiOtherExceptionImpl>
    implements _$$ApiOtherExceptionImplCopyWith<$Res> {
  __$$ApiOtherExceptionImplCopyWithImpl(_$ApiOtherExceptionImpl _value,
      $Res Function(_$ApiOtherExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiOtherExceptionImpl implements ApiOtherException {
  const _$ApiOtherExceptionImpl();

  @override
  String toString() {
    return 'ApiStatus.otherException()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiOtherExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return otherException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return otherException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiInitial value) initial,
    required TResult Function(ApiLoading value) loading,
    required TResult Function(ApiLoaded value) loaded,
    required TResult Function(ApiServerError value) serverError,
    required TResult Function(ApiOtherException value) otherException,
  }) {
    return otherException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiInitial value)? initial,
    TResult? Function(ApiLoading value)? loading,
    TResult? Function(ApiLoaded value)? loaded,
    TResult? Function(ApiServerError value)? serverError,
    TResult? Function(ApiOtherException value)? otherException,
  }) {
    return otherException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiInitial value)? initial,
    TResult Function(ApiLoading value)? loading,
    TResult Function(ApiLoaded value)? loaded,
    TResult Function(ApiServerError value)? serverError,
    TResult Function(ApiOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException(this);
    }
    return orElse();
  }
}

abstract class ApiOtherException implements ApiStatus {
  const factory ApiOtherException() = _$ApiOtherExceptionImpl;
}

/// @nodoc
mixin _$FlutterRepoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialFetch,
    required TResult Function() fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialFetch,
    TResult? Function()? fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialFetch,
    TResult Function()? fetchMoreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFetch value) initialFetch,
    required TResult Function(FetchMoreItems value) fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialFetch value)? initialFetch,
    TResult? Function(FetchMoreItems value)? fetchMoreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFetch value)? initialFetch,
    TResult Function(FetchMoreItems value)? fetchMoreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterRepoEventCopyWith<$Res> {
  factory $FlutterRepoEventCopyWith(
          FlutterRepoEvent value, $Res Function(FlutterRepoEvent) then) =
      _$FlutterRepoEventCopyWithImpl<$Res, FlutterRepoEvent>;
}

/// @nodoc
class _$FlutterRepoEventCopyWithImpl<$Res, $Val extends FlutterRepoEvent>
    implements $FlutterRepoEventCopyWith<$Res> {
  _$FlutterRepoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialFetchImplCopyWith<$Res> {
  factory _$$InitialFetchImplCopyWith(
          _$InitialFetchImpl value, $Res Function(_$InitialFetchImpl) then) =
      __$$InitialFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialFetchImplCopyWithImpl<$Res>
    extends _$FlutterRepoEventCopyWithImpl<$Res, _$InitialFetchImpl>
    implements _$$InitialFetchImplCopyWith<$Res> {
  __$$InitialFetchImplCopyWithImpl(
      _$InitialFetchImpl _value, $Res Function(_$InitialFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialFetchImpl implements InitialFetch {
  const _$InitialFetchImpl();

  @override
  String toString() {
    return 'FlutterRepoEvent.initialFetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialFetch,
    required TResult Function() fetchMoreItems,
  }) {
    return initialFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialFetch,
    TResult? Function()? fetchMoreItems,
  }) {
    return initialFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialFetch,
    TResult Function()? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (initialFetch != null) {
      return initialFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFetch value) initialFetch,
    required TResult Function(FetchMoreItems value) fetchMoreItems,
  }) {
    return initialFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialFetch value)? initialFetch,
    TResult? Function(FetchMoreItems value)? fetchMoreItems,
  }) {
    return initialFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFetch value)? initialFetch,
    TResult Function(FetchMoreItems value)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (initialFetch != null) {
      return initialFetch(this);
    }
    return orElse();
  }
}

abstract class InitialFetch implements FlutterRepoEvent {
  const factory InitialFetch() = _$InitialFetchImpl;
}

/// @nodoc
abstract class _$$FetchMoreItemsImplCopyWith<$Res> {
  factory _$$FetchMoreItemsImplCopyWith(_$FetchMoreItemsImpl value,
          $Res Function(_$FetchMoreItemsImpl) then) =
      __$$FetchMoreItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreItemsImplCopyWithImpl<$Res>
    extends _$FlutterRepoEventCopyWithImpl<$Res, _$FetchMoreItemsImpl>
    implements _$$FetchMoreItemsImplCopyWith<$Res> {
  __$$FetchMoreItemsImplCopyWithImpl(
      _$FetchMoreItemsImpl _value, $Res Function(_$FetchMoreItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreItemsImpl implements FetchMoreItems {
  const _$FetchMoreItemsImpl();

  @override
  String toString() {
    return 'FlutterRepoEvent.fetchMoreItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialFetch,
    required TResult Function() fetchMoreItems,
  }) {
    return fetchMoreItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialFetch,
    TResult? Function()? fetchMoreItems,
  }) {
    return fetchMoreItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialFetch,
    TResult Function()? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (fetchMoreItems != null) {
      return fetchMoreItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFetch value) initialFetch,
    required TResult Function(FetchMoreItems value) fetchMoreItems,
  }) {
    return fetchMoreItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialFetch value)? initialFetch,
    TResult? Function(FetchMoreItems value)? fetchMoreItems,
  }) {
    return fetchMoreItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFetch value)? initialFetch,
    TResult Function(FetchMoreItems value)? fetchMoreItems,
    required TResult orElse(),
  }) {
    if (fetchMoreItems != null) {
      return fetchMoreItems(this);
    }
    return orElse();
  }
}

abstract class FetchMoreItems implements FlutterRepoEvent {
  const factory FetchMoreItems() = _$FetchMoreItemsImpl;
}
