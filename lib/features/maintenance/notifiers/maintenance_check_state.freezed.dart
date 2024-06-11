// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_check_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaintenanceCheckState {
  MaintenanceCheckStatus? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaintenanceCheckStateCopyWith<MaintenanceCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceCheckStateCopyWith<$Res> {
  factory $MaintenanceCheckStateCopyWith(MaintenanceCheckState value,
          $Res Function(MaintenanceCheckState) then) =
      _$MaintenanceCheckStateCopyWithImpl<$Res, MaintenanceCheckState>;
  @useResult
  $Res call({MaintenanceCheckStatus? status});

  $MaintenanceCheckStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$MaintenanceCheckStateCopyWithImpl<$Res,
        $Val extends MaintenanceCheckState>
    implements $MaintenanceCheckStateCopyWith<$Res> {
  _$MaintenanceCheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MaintenanceCheckStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MaintenanceCheckStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $MaintenanceCheckStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MaintenanceCheckStateImplCopyWith<$Res>
    implements $MaintenanceCheckStateCopyWith<$Res> {
  factory _$$MaintenanceCheckStateImplCopyWith(
          _$MaintenanceCheckStateImpl value,
          $Res Function(_$MaintenanceCheckStateImpl) then) =
      __$$MaintenanceCheckStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaintenanceCheckStatus? status});

  @override
  $MaintenanceCheckStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MaintenanceCheckStateImplCopyWithImpl<$Res>
    extends _$MaintenanceCheckStateCopyWithImpl<$Res,
        _$MaintenanceCheckStateImpl>
    implements _$$MaintenanceCheckStateImplCopyWith<$Res> {
  __$$MaintenanceCheckStateImplCopyWithImpl(_$MaintenanceCheckStateImpl _value,
      $Res Function(_$MaintenanceCheckStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$MaintenanceCheckStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MaintenanceCheckStatus?,
    ));
  }
}

/// @nodoc

class _$MaintenanceCheckStateImpl implements _MaintenanceCheckState {
  _$MaintenanceCheckStateImpl(
      {this.status = const MaintenanceCheckStatus.operational()});

  @override
  @JsonKey()
  final MaintenanceCheckStatus? status;

  @override
  String toString() {
    return 'MaintenanceCheckState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceCheckStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceCheckStateImplCopyWith<_$MaintenanceCheckStateImpl>
      get copyWith => __$$MaintenanceCheckStateImplCopyWithImpl<
          _$MaintenanceCheckStateImpl>(this, _$identity);
}

abstract class _MaintenanceCheckState implements MaintenanceCheckState {
  factory _MaintenanceCheckState({final MaintenanceCheckStatus? status}) =
      _$MaintenanceCheckStateImpl;

  @override
  MaintenanceCheckStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceCheckStateImplCopyWith<_$MaintenanceCheckStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MaintenanceCheckStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checking,
    required TResult Function() operational,
    required TResult Function() maintenanceMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checking,
    TResult? Function()? operational,
    TResult? Function()? maintenanceMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checking,
    TResult Function()? operational,
    TResult Function()? maintenanceMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checking value) checking,
    required TResult Function(Operational value) operational,
    required TResult Function(MaintenanceMode value) maintenanceMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checking value)? checking,
    TResult? Function(Operational value)? operational,
    TResult? Function(MaintenanceMode value)? maintenanceMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checking value)? checking,
    TResult Function(Operational value)? operational,
    TResult Function(MaintenanceMode value)? maintenanceMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceCheckStatusCopyWith<$Res> {
  factory $MaintenanceCheckStatusCopyWith(MaintenanceCheckStatus value,
          $Res Function(MaintenanceCheckStatus) then) =
      _$MaintenanceCheckStatusCopyWithImpl<$Res, MaintenanceCheckStatus>;
}

/// @nodoc
class _$MaintenanceCheckStatusCopyWithImpl<$Res,
        $Val extends MaintenanceCheckStatus>
    implements $MaintenanceCheckStatusCopyWith<$Res> {
  _$MaintenanceCheckStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$MaintenanceCheckStatusCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingImpl implements Checking {
  const _$CheckingImpl();

  @override
  String toString() {
    return 'MaintenanceCheckStatus.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checking,
    required TResult Function() operational,
    required TResult Function() maintenanceMode,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checking,
    TResult? Function()? operational,
    TResult? Function()? maintenanceMode,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checking,
    TResult Function()? operational,
    TResult Function()? maintenanceMode,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checking value) checking,
    required TResult Function(Operational value) operational,
    required TResult Function(MaintenanceMode value) maintenanceMode,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checking value)? checking,
    TResult? Function(Operational value)? operational,
    TResult? Function(MaintenanceMode value)? maintenanceMode,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checking value)? checking,
    TResult Function(Operational value)? operational,
    TResult Function(MaintenanceMode value)? maintenanceMode,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class Checking implements MaintenanceCheckStatus {
  const factory Checking() = _$CheckingImpl;
}

/// @nodoc
abstract class _$$OperationalImplCopyWith<$Res> {
  factory _$$OperationalImplCopyWith(
          _$OperationalImpl value, $Res Function(_$OperationalImpl) then) =
      __$$OperationalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OperationalImplCopyWithImpl<$Res>
    extends _$MaintenanceCheckStatusCopyWithImpl<$Res, _$OperationalImpl>
    implements _$$OperationalImplCopyWith<$Res> {
  __$$OperationalImplCopyWithImpl(
      _$OperationalImpl _value, $Res Function(_$OperationalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OperationalImpl implements Operational {
  const _$OperationalImpl();

  @override
  String toString() {
    return 'MaintenanceCheckStatus.operational()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OperationalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checking,
    required TResult Function() operational,
    required TResult Function() maintenanceMode,
  }) {
    return operational();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checking,
    TResult? Function()? operational,
    TResult? Function()? maintenanceMode,
  }) {
    return operational?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checking,
    TResult Function()? operational,
    TResult Function()? maintenanceMode,
    required TResult orElse(),
  }) {
    if (operational != null) {
      return operational();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checking value) checking,
    required TResult Function(Operational value) operational,
    required TResult Function(MaintenanceMode value) maintenanceMode,
  }) {
    return operational(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checking value)? checking,
    TResult? Function(Operational value)? operational,
    TResult? Function(MaintenanceMode value)? maintenanceMode,
  }) {
    return operational?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checking value)? checking,
    TResult Function(Operational value)? operational,
    TResult Function(MaintenanceMode value)? maintenanceMode,
    required TResult orElse(),
  }) {
    if (operational != null) {
      return operational(this);
    }
    return orElse();
  }
}

abstract class Operational implements MaintenanceCheckStatus {
  const factory Operational() = _$OperationalImpl;
}

/// @nodoc
abstract class _$$MaintenanceModeImplCopyWith<$Res> {
  factory _$$MaintenanceModeImplCopyWith(_$MaintenanceModeImpl value,
          $Res Function(_$MaintenanceModeImpl) then) =
      __$$MaintenanceModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaintenanceModeImplCopyWithImpl<$Res>
    extends _$MaintenanceCheckStatusCopyWithImpl<$Res, _$MaintenanceModeImpl>
    implements _$$MaintenanceModeImplCopyWith<$Res> {
  __$$MaintenanceModeImplCopyWithImpl(
      _$MaintenanceModeImpl _value, $Res Function(_$MaintenanceModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaintenanceModeImpl implements MaintenanceMode {
  const _$MaintenanceModeImpl();

  @override
  String toString() {
    return 'MaintenanceCheckStatus.maintenanceMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MaintenanceModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checking,
    required TResult Function() operational,
    required TResult Function() maintenanceMode,
  }) {
    return maintenanceMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checking,
    TResult? Function()? operational,
    TResult? Function()? maintenanceMode,
  }) {
    return maintenanceMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checking,
    TResult Function()? operational,
    TResult Function()? maintenanceMode,
    required TResult orElse(),
  }) {
    if (maintenanceMode != null) {
      return maintenanceMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checking value) checking,
    required TResult Function(Operational value) operational,
    required TResult Function(MaintenanceMode value) maintenanceMode,
  }) {
    return maintenanceMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checking value)? checking,
    TResult? Function(Operational value)? operational,
    TResult? Function(MaintenanceMode value)? maintenanceMode,
  }) {
    return maintenanceMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checking value)? checking,
    TResult Function(Operational value)? operational,
    TResult Function(MaintenanceMode value)? maintenanceMode,
    required TResult orElse(),
  }) {
    if (maintenanceMode != null) {
      return maintenanceMode(this);
    }
    return orElse();
  }
}

abstract class MaintenanceMode implements MaintenanceCheckStatus {
  const factory MaintenanceMode() = _$MaintenanceModeImpl;
}
