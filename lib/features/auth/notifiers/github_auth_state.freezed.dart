// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GitHubAuthState {
  GitHubAuthStatus? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GitHubAuthStateCopyWith<GitHubAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubAuthStateCopyWith<$Res> {
  factory $GitHubAuthStateCopyWith(
          GitHubAuthState value, $Res Function(GitHubAuthState) then) =
      _$GitHubAuthStateCopyWithImpl<$Res, GitHubAuthState>;
  @useResult
  $Res call({GitHubAuthStatus? status, String? errorMessage});

  $GitHubAuthStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$GitHubAuthStateCopyWithImpl<$Res, $Val extends GitHubAuthState>
    implements $GitHubAuthStateCopyWith<$Res> {
  _$GitHubAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitHubAuthStatus?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitHubAuthStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $GitHubAuthStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitHubAuthStateImplCopyWith<$Res>
    implements $GitHubAuthStateCopyWith<$Res> {
  factory _$$GitHubAuthStateImplCopyWith(_$GitHubAuthStateImpl value,
          $Res Function(_$GitHubAuthStateImpl) then) =
      __$$GitHubAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GitHubAuthStatus? status, String? errorMessage});

  @override
  $GitHubAuthStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GitHubAuthStateImplCopyWithImpl<$Res>
    extends _$GitHubAuthStateCopyWithImpl<$Res, _$GitHubAuthStateImpl>
    implements _$$GitHubAuthStateImplCopyWith<$Res> {
  __$$GitHubAuthStateImplCopyWithImpl(
      _$GitHubAuthStateImpl _value, $Res Function(_$GitHubAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$GitHubAuthStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitHubAuthStatus?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GitHubAuthStateImpl implements _GitHubAuthState {
  _$GitHubAuthStateImpl(
      {this.status = const GitHubAuthStatus.initial(), this.errorMessage});

  @override
  @JsonKey()
  final GitHubAuthStatus? status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'GitHubAuthState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubAuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubAuthStateImplCopyWith<_$GitHubAuthStateImpl> get copyWith =>
      __$$GitHubAuthStateImplCopyWithImpl<_$GitHubAuthStateImpl>(
          this, _$identity);
}

abstract class _GitHubAuthState implements GitHubAuthState {
  factory _GitHubAuthState(
      {final GitHubAuthStatus? status,
      final String? errorMessage}) = _$GitHubAuthStateImpl;

  @override
  GitHubAuthStatus? get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$GitHubAuthStateImplCopyWith<_$GitHubAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GitHubAuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubAuthStatusCopyWith<$Res> {
  factory $GitHubAuthStatusCopyWith(
          GitHubAuthStatus value, $Res Function(GitHubAuthStatus) then) =
      _$GitHubAuthStatusCopyWithImpl<$Res, GitHubAuthStatus>;
}

/// @nodoc
class _$GitHubAuthStatusCopyWithImpl<$Res, $Val extends GitHubAuthStatus>
    implements $GitHubAuthStatusCopyWith<$Res> {
  _$GitHubAuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GitHubAuthInitialImplCopyWith<$Res> {
  factory _$$GitHubAuthInitialImplCopyWith(_$GitHubAuthInitialImpl value,
          $Res Function(_$GitHubAuthInitialImpl) then) =
      __$$GitHubAuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthInitialImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthInitialImpl>
    implements _$$GitHubAuthInitialImplCopyWith<$Res> {
  __$$GitHubAuthInitialImplCopyWithImpl(_$GitHubAuthInitialImpl _value,
      $Res Function(_$GitHubAuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthInitialImpl implements GitHubAuthInitial {
  const _$GitHubAuthInitialImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GitHubAuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
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
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
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
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthInitial implements GitHubAuthStatus {
  const factory GitHubAuthInitial() = _$GitHubAuthInitialImpl;
}

/// @nodoc
abstract class _$$GitHubAuthLoadingImplCopyWith<$Res> {
  factory _$$GitHubAuthLoadingImplCopyWith(_$GitHubAuthLoadingImpl value,
          $Res Function(_$GitHubAuthLoadingImpl) then) =
      __$$GitHubAuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthLoadingImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthLoadingImpl>
    implements _$$GitHubAuthLoadingImplCopyWith<$Res> {
  __$$GitHubAuthLoadingImplCopyWithImpl(_$GitHubAuthLoadingImpl _value,
      $Res Function(_$GitHubAuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthLoadingImpl implements GitHubAuthLoading {
  const _$GitHubAuthLoadingImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GitHubAuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
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
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
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
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthLoading implements GitHubAuthStatus {
  const factory GitHubAuthLoading() = _$GitHubAuthLoadingImpl;
}

/// @nodoc
abstract class _$$GitHubAuthLoggedInImplCopyWith<$Res> {
  factory _$$GitHubAuthLoggedInImplCopyWith(_$GitHubAuthLoggedInImpl value,
          $Res Function(_$GitHubAuthLoggedInImpl) then) =
      __$$GitHubAuthLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthLoggedInImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthLoggedInImpl>
    implements _$$GitHubAuthLoggedInImplCopyWith<$Res> {
  __$$GitHubAuthLoggedInImplCopyWithImpl(_$GitHubAuthLoggedInImpl _value,
      $Res Function(_$GitHubAuthLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthLoggedInImpl implements GitHubAuthLoggedIn {
  const _$GitHubAuthLoggedInImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GitHubAuthLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthLoggedIn implements GitHubAuthStatus {
  const factory GitHubAuthLoggedIn() = _$GitHubAuthLoggedInImpl;
}

/// @nodoc
abstract class _$$GitHubAuthLoggedOutImplCopyWith<$Res> {
  factory _$$GitHubAuthLoggedOutImplCopyWith(_$GitHubAuthLoggedOutImpl value,
          $Res Function(_$GitHubAuthLoggedOutImpl) then) =
      __$$GitHubAuthLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthLoggedOutImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthLoggedOutImpl>
    implements _$$GitHubAuthLoggedOutImplCopyWith<$Res> {
  __$$GitHubAuthLoggedOutImplCopyWithImpl(_$GitHubAuthLoggedOutImpl _value,
      $Res Function(_$GitHubAuthLoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthLoggedOutImpl implements GitHubAuthLoggedOut {
  const _$GitHubAuthLoggedOutImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubAuthLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthLoggedOut implements GitHubAuthStatus {
  const factory GitHubAuthLoggedOut() = _$GitHubAuthLoggedOutImpl;
}

/// @nodoc
abstract class _$$GitHubAuthServerErrorImplCopyWith<$Res> {
  factory _$$GitHubAuthServerErrorImplCopyWith(
          _$GitHubAuthServerErrorImpl value,
          $Res Function(_$GitHubAuthServerErrorImpl) then) =
      __$$GitHubAuthServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthServerErrorImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthServerErrorImpl>
    implements _$$GitHubAuthServerErrorImplCopyWith<$Res> {
  __$$GitHubAuthServerErrorImplCopyWithImpl(_$GitHubAuthServerErrorImpl _value,
      $Res Function(_$GitHubAuthServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthServerErrorImpl implements GitHubAuthServerError {
  const _$GitHubAuthServerErrorImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubAuthServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
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
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
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
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthServerError implements GitHubAuthStatus {
  const factory GitHubAuthServerError() = _$GitHubAuthServerErrorImpl;
}

/// @nodoc
abstract class _$$GitHubAuthOtherExceptionImplCopyWith<$Res> {
  factory _$$GitHubAuthOtherExceptionImplCopyWith(
          _$GitHubAuthOtherExceptionImpl value,
          $Res Function(_$GitHubAuthOtherExceptionImpl) then) =
      __$$GitHubAuthOtherExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthOtherExceptionImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthOtherExceptionImpl>
    implements _$$GitHubAuthOtherExceptionImplCopyWith<$Res> {
  __$$GitHubAuthOtherExceptionImplCopyWithImpl(
      _$GitHubAuthOtherExceptionImpl _value,
      $Res Function(_$GitHubAuthOtherExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthOtherExceptionImpl implements GitHubAuthOtherException {
  const _$GitHubAuthOtherExceptionImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.otherException()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubAuthOtherExceptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
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
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
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
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(GitHubAuthInitial value) initial,
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoggedIn value) loggedIn,
    required TResult Function(GitHubAuthLoggedOut value) loggedOut,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return otherException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthInitial value)? initial,
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult? Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return otherException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthInitial value)? initial,
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoggedIn value)? loggedIn,
    TResult Function(GitHubAuthLoggedOut value)? loggedOut,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (otherException != null) {
      return otherException(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthOtherException implements GitHubAuthStatus {
  const factory GitHubAuthOtherException() = _$GitHubAuthOtherExceptionImpl;
}

/// @nodoc
mixin _$GitHubAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateToken,
    required TResult Function(String code) signingIn,
    required TResult Function() signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateToken,
    TResult? Function(String code)? signingIn,
    TResult? Function()? signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateToken,
    TResult Function(String code)? signingIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateToken value) validateToken,
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SigningOut value) signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateToken value)? validateToken,
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SigningOut value)? signingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateToken value)? validateToken,
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SigningOut value)? signingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubAuthEventCopyWith<$Res> {
  factory $GitHubAuthEventCopyWith(
          GitHubAuthEvent value, $Res Function(GitHubAuthEvent) then) =
      _$GitHubAuthEventCopyWithImpl<$Res, GitHubAuthEvent>;
}

/// @nodoc
class _$GitHubAuthEventCopyWithImpl<$Res, $Val extends GitHubAuthEvent>
    implements $GitHubAuthEventCopyWith<$Res> {
  _$GitHubAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidateTokenImplCopyWith<$Res> {
  factory _$$ValidateTokenImplCopyWith(
          _$ValidateTokenImpl value, $Res Function(_$ValidateTokenImpl) then) =
      __$$ValidateTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateTokenImplCopyWithImpl<$Res>
    extends _$GitHubAuthEventCopyWithImpl<$Res, _$ValidateTokenImpl>
    implements _$$ValidateTokenImplCopyWith<$Res> {
  __$$ValidateTokenImplCopyWithImpl(
      _$ValidateTokenImpl _value, $Res Function(_$ValidateTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateTokenImpl implements ValidateToken {
  const _$ValidateTokenImpl();

  @override
  String toString() {
    return 'GitHubAuthEvent.validateToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateToken,
    required TResult Function(String code) signingIn,
    required TResult Function() signingOut,
  }) {
    return validateToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateToken,
    TResult? Function(String code)? signingIn,
    TResult? Function()? signingOut,
  }) {
    return validateToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateToken,
    TResult Function(String code)? signingIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) {
    if (validateToken != null) {
      return validateToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateToken value) validateToken,
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SigningOut value) signingOut,
  }) {
    return validateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateToken value)? validateToken,
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SigningOut value)? signingOut,
  }) {
    return validateToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateToken value)? validateToken,
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SigningOut value)? signingOut,
    required TResult orElse(),
  }) {
    if (validateToken != null) {
      return validateToken(this);
    }
    return orElse();
  }
}

abstract class ValidateToken implements GitHubAuthEvent {
  const factory ValidateToken() = _$ValidateTokenImpl;
}

/// @nodoc
abstract class _$$SigningInImplCopyWith<$Res> {
  factory _$$SigningInImplCopyWith(
          _$SigningInImpl value, $Res Function(_$SigningInImpl) then) =
      __$$SigningInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$SigningInImplCopyWithImpl<$Res>
    extends _$GitHubAuthEventCopyWithImpl<$Res, _$SigningInImpl>
    implements _$$SigningInImplCopyWith<$Res> {
  __$$SigningInImplCopyWithImpl(
      _$SigningInImpl _value, $Res Function(_$SigningInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$SigningInImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigningInImpl implements SigningIn {
  const _$SigningInImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'GitHubAuthEvent.signingIn(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigningInImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigningInImplCopyWith<_$SigningInImpl> get copyWith =>
      __$$SigningInImplCopyWithImpl<_$SigningInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateToken,
    required TResult Function(String code) signingIn,
    required TResult Function() signingOut,
  }) {
    return signingIn(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateToken,
    TResult? Function(String code)? signingIn,
    TResult? Function()? signingOut,
  }) {
    return signingIn?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateToken,
    TResult Function(String code)? signingIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateToken value) validateToken,
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SigningOut value) signingOut,
  }) {
    return signingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateToken value)? validateToken,
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SigningOut value)? signingOut,
  }) {
    return signingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateToken value)? validateToken,
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SigningOut value)? signingOut,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(this);
    }
    return orElse();
  }
}

abstract class SigningIn implements GitHubAuthEvent {
  const factory SigningIn({required final String code}) = _$SigningInImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$SigningInImplCopyWith<_$SigningInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigningOutImplCopyWith<$Res> {
  factory _$$SigningOutImplCopyWith(
          _$SigningOutImpl value, $Res Function(_$SigningOutImpl) then) =
      __$$SigningOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SigningOutImplCopyWithImpl<$Res>
    extends _$GitHubAuthEventCopyWithImpl<$Res, _$SigningOutImpl>
    implements _$$SigningOutImplCopyWith<$Res> {
  __$$SigningOutImplCopyWithImpl(
      _$SigningOutImpl _value, $Res Function(_$SigningOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SigningOutImpl implements SigningOut {
  const _$SigningOutImpl();

  @override
  String toString() {
    return 'GitHubAuthEvent.signingOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SigningOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validateToken,
    required TResult Function(String code) signingIn,
    required TResult Function() signingOut,
  }) {
    return signingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validateToken,
    TResult? Function(String code)? signingIn,
    TResult? Function()? signingOut,
  }) {
    return signingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validateToken,
    TResult Function(String code)? signingIn,
    TResult Function()? signingOut,
    required TResult orElse(),
  }) {
    if (signingOut != null) {
      return signingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateToken value) validateToken,
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SigningOut value) signingOut,
  }) {
    return signingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateToken value)? validateToken,
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SigningOut value)? signingOut,
  }) {
    return signingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateToken value)? validateToken,
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SigningOut value)? signingOut,
    required TResult orElse(),
  }) {
    if (signingOut != null) {
      return signingOut(this);
    }
    return orElse();
  }
}

abstract class SigningOut implements GitHubAuthEvent {
  const factory SigningOut() = _$SigningOutImpl;
}
