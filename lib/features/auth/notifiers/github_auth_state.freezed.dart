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
  String? get code => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;

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
  $Res call({GitHubAuthStatus? status, String? code, String? accessToken});

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
    Object? code = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitHubAuthStatus?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
  $Res call({GitHubAuthStatus? status, String? code, String? accessToken});

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
    Object? code = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$GitHubAuthStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitHubAuthStatus?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GitHubAuthStateImpl implements _GitHubAuthState {
  _$GitHubAuthStateImpl(
      {this.status = const GitHubAuthStatus.loading(),
      this.code,
      this.accessToken});

  @override
  @JsonKey()
  final GitHubAuthStatus? status;
  @override
  final String? code;
  @override
  final String? accessToken;

  @override
  String toString() {
    return 'GitHubAuthState(status: $status, code: $code, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubAuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, code, accessToken);

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
      final String? code,
      final String? accessToken}) = _$GitHubAuthStateImpl;

  @override
  GitHubAuthStatus? get status;
  @override
  String? get code;
  @override
  String? get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$GitHubAuthStateImplCopyWith<_$GitHubAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GitHubAuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() serverError,
    required TResult Function() otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? serverError,
    TResult? Function()? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? serverError,
    TResult Function()? otherException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoaded value) loaded,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoaded value)? loaded,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoaded value)? loaded,
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
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoaded value) loaded,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoaded value)? loaded,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoaded value)? loaded,
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
abstract class _$$GitHubAuthLoadedImplCopyWith<$Res> {
  factory _$$GitHubAuthLoadedImplCopyWith(_$GitHubAuthLoadedImpl value,
          $Res Function(_$GitHubAuthLoadedImpl) then) =
      __$$GitHubAuthLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GitHubAuthLoadedImplCopyWithImpl<$Res>
    extends _$GitHubAuthStatusCopyWithImpl<$Res, _$GitHubAuthLoadedImpl>
    implements _$$GitHubAuthLoadedImplCopyWith<$Res> {
  __$$GitHubAuthLoadedImplCopyWithImpl(_$GitHubAuthLoadedImpl _value,
      $Res Function(_$GitHubAuthLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GitHubAuthLoadedImpl implements GitHubAuthLoaded {
  const _$GitHubAuthLoadedImpl();

  @override
  String toString() {
    return 'GitHubAuthStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GitHubAuthLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoaded value) loaded,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoaded value)? loaded,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoaded value)? loaded,
    TResult Function(GitHubAuthServerError value)? serverError,
    TResult Function(GitHubAuthOtherException value)? otherException,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GitHubAuthLoaded implements GitHubAuthStatus {
  const factory GitHubAuthLoaded() = _$GitHubAuthLoadedImpl;
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
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoaded value) loaded,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoaded value)? loaded,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoaded value)? loaded,
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
    required TResult Function(GitHubAuthLoading value) loading,
    required TResult Function(GitHubAuthLoaded value) loaded,
    required TResult Function(GitHubAuthServerError value) serverError,
    required TResult Function(GitHubAuthOtherException value) otherException,
  }) {
    return otherException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GitHubAuthLoading value)? loading,
    TResult? Function(GitHubAuthLoaded value)? loaded,
    TResult? Function(GitHubAuthServerError value)? serverError,
    TResult? Function(GitHubAuthOtherException value)? otherException,
  }) {
    return otherException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GitHubAuthLoading value)? loading,
    TResult Function(GitHubAuthLoaded value)? loaded,
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
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
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
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$GitHubAuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'GitHubAuthEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements GitHubAuthEvent {
  const factory SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$GitHubAuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'GitHubAuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements GitHubAuthEvent {
  const factory SignOut() = _$SignOutImpl;
}
