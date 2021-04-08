// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraEventTearOff {
  const _$CameraEventTearOff();

  _Started checkPermissions({required bool ask}) {
    return _Started(
      ask: ask,
    );
  }
}

/// @nodoc
const $CameraEvent = _$CameraEventTearOff();

/// @nodoc
mixin _$CameraEvent {
  bool get ask => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? checkPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraEventCopyWith<CameraEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res>;
  $Res call({bool ask});
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res> implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  final CameraEvent _value;
  // ignore: unused_field
  final $Res Function(CameraEvent) _then;

  @override
  $Res call({
    Object? ask = freezed,
  }) {
    return _then(_value.copyWith(
      ask: ask == freezed
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> implements $CameraEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({bool ask});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CameraEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? ask = freezed,
  }) {
    return _then(_Started(
      ask: ask == freezed
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({required this.ask});

  @override
  final bool ask;

  @override
  String toString() {
    return 'CameraEvent.checkPermissions(ask: $ask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.ask, ask) ||
                const DeepCollectionEquality().equals(other.ask, ask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ask);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
  }) {
    return checkPermissions(ask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    required TResult orElse(),
  }) {
    if (checkPermissions != null) {
      return checkPermissions(ask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) checkPermissions,
  }) {
    return checkPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (checkPermissions != null) {
      return checkPermissions(this);
    }
    return orElse();
  }
}

abstract class _Started implements CameraEvent {
  const factory _Started({required bool ask}) = _$_Started;

  @override
  bool get ask => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  _CameraState call({bool permissions = false}) {
    return _CameraState(
      permissions: permissions,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  bool get permissions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
  $Res call({bool permissions});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;

  @override
  $Res call({
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateCopyWith(
          _CameraState value, $Res Function(_CameraState) then) =
      __$CameraStateCopyWithImpl<$Res>;
  @override
  $Res call({bool permissions});
}

/// @nodoc
class __$CameraStateCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateCopyWith<$Res> {
  __$CameraStateCopyWithImpl(
      _CameraState _value, $Res Function(_CameraState) _then)
      : super(_value, (v) => _then(v as _CameraState));

  @override
  _CameraState get _value => super._value as _CameraState;

  @override
  $Res call({
    Object? permissions = freezed,
  }) {
    return _then(_CameraState(
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraState implements _CameraState {
  const _$_CameraState({this.permissions = false});

  @JsonKey(defaultValue: false)
  @override
  final bool permissions;

  @override
  String toString() {
    return 'CameraState(permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CameraState &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(permissions);

  @JsonKey(ignore: true)
  @override
  _$CameraStateCopyWith<_CameraState> get copyWith =>
      __$CameraStateCopyWithImpl<_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState({bool permissions}) = _$_CameraState;

  @override
  bool get permissions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateCopyWith<_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
