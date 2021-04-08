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

  _CheckPermissions checkPermissions({required bool ask}) {
    return _CheckPermissions(
      ask: ask,
    );
  }

  _TakePhoto takePhoto() {
    return const _TakePhoto();
  }

  _NewJoke newJoke() {
    return const _NewJoke();
  }
}

/// @nodoc
const $CameraEvent = _$CameraEventTearOff();

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
    required TResult Function() takePhoto,
    required TResult Function() newJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    TResult Function()? takePhoto,
    TResult Function()? newJoke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermissions value) checkPermissions,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_NewJoke value) newJoke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermissions value)? checkPermissions,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_NewJoke value)? newJoke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res> implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  final CameraEvent _value;
  // ignore: unused_field
  final $Res Function(CameraEvent) _then;
}

/// @nodoc
abstract class _$CheckPermissionsCopyWith<$Res> {
  factory _$CheckPermissionsCopyWith(
          _CheckPermissions value, $Res Function(_CheckPermissions) then) =
      __$CheckPermissionsCopyWithImpl<$Res>;
  $Res call({bool ask});
}

/// @nodoc
class __$CheckPermissionsCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res>
    implements _$CheckPermissionsCopyWith<$Res> {
  __$CheckPermissionsCopyWithImpl(
      _CheckPermissions _value, $Res Function(_CheckPermissions) _then)
      : super(_value, (v) => _then(v as _CheckPermissions));

  @override
  _CheckPermissions get _value => super._value as _CheckPermissions;

  @override
  $Res call({
    Object? ask = freezed,
  }) {
    return _then(_CheckPermissions(
      ask: ask == freezed
          ? _value.ask
          : ask // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CheckPermissions implements _CheckPermissions {
  const _$_CheckPermissions({required this.ask});

  @override
  final bool ask;

  @override
  String toString() {
    return 'CameraEvent.checkPermissions(ask: $ask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckPermissions &&
            (identical(other.ask, ask) ||
                const DeepCollectionEquality().equals(other.ask, ask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ask);

  @JsonKey(ignore: true)
  @override
  _$CheckPermissionsCopyWith<_CheckPermissions> get copyWith =>
      __$CheckPermissionsCopyWithImpl<_CheckPermissions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
    required TResult Function() takePhoto,
    required TResult Function() newJoke,
  }) {
    return checkPermissions(ask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    TResult Function()? takePhoto,
    TResult Function()? newJoke,
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
    required TResult Function(_CheckPermissions value) checkPermissions,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_NewJoke value) newJoke,
  }) {
    return checkPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermissions value)? checkPermissions,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_NewJoke value)? newJoke,
    required TResult orElse(),
  }) {
    if (checkPermissions != null) {
      return checkPermissions(this);
    }
    return orElse();
  }
}

abstract class _CheckPermissions implements CameraEvent {
  const factory _CheckPermissions({required bool ask}) = _$_CheckPermissions;

  bool get ask => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckPermissionsCopyWith<_CheckPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TakePhotoCopyWith<$Res> {
  factory _$TakePhotoCopyWith(
          _TakePhoto value, $Res Function(_TakePhoto) then) =
      __$TakePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$TakePhotoCopyWithImpl<$Res> extends _$CameraEventCopyWithImpl<$Res>
    implements _$TakePhotoCopyWith<$Res> {
  __$TakePhotoCopyWithImpl(_TakePhoto _value, $Res Function(_TakePhoto) _then)
      : super(_value, (v) => _then(v as _TakePhoto));

  @override
  _TakePhoto get _value => super._value as _TakePhoto;
}

/// @nodoc
class _$_TakePhoto implements _TakePhoto {
  const _$_TakePhoto();

  @override
  String toString() {
    return 'CameraEvent.takePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TakePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
    required TResult Function() takePhoto,
    required TResult Function() newJoke,
  }) {
    return takePhoto();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    TResult Function()? takePhoto,
    TResult Function()? newJoke,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermissions value) checkPermissions,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_NewJoke value) newJoke,
  }) {
    return takePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermissions value)? checkPermissions,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_NewJoke value)? newJoke,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto(this);
    }
    return orElse();
  }
}

abstract class _TakePhoto implements CameraEvent {
  const factory _TakePhoto() = _$_TakePhoto;
}

/// @nodoc
abstract class _$NewJokeCopyWith<$Res> {
  factory _$NewJokeCopyWith(_NewJoke value, $Res Function(_NewJoke) then) =
      __$NewJokeCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewJokeCopyWithImpl<$Res> extends _$CameraEventCopyWithImpl<$Res>
    implements _$NewJokeCopyWith<$Res> {
  __$NewJokeCopyWithImpl(_NewJoke _value, $Res Function(_NewJoke) _then)
      : super(_value, (v) => _then(v as _NewJoke));

  @override
  _NewJoke get _value => super._value as _NewJoke;
}

/// @nodoc
class _$_NewJoke implements _NewJoke {
  const _$_NewJoke();

  @override
  String toString() {
    return 'CameraEvent.newJoke()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewJoke);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool ask) checkPermissions,
    required TResult Function() takePhoto,
    required TResult Function() newJoke,
  }) {
    return newJoke();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool ask)? checkPermissions,
    TResult Function()? takePhoto,
    TResult Function()? newJoke,
    required TResult orElse(),
  }) {
    if (newJoke != null) {
      return newJoke();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPermissions value) checkPermissions,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_NewJoke value) newJoke,
  }) {
    return newJoke(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPermissions value)? checkPermissions,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_NewJoke value)? newJoke,
    required TResult orElse(),
  }) {
    if (newJoke != null) {
      return newJoke(this);
    }
    return orElse();
  }
}

abstract class _NewJoke implements CameraEvent {
  const factory _NewJoke() = _$_NewJoke;
}

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  _CameraState call(
      {bool permissions = false,
      bool sayingJoke = false,
      bool fetchingJoke = false,
      Joke? joke = null,
      String? error = null,
      bool takePhoto = false}) {
    return _CameraState(
      permissions: permissions,
      sayingJoke: sayingJoke,
      fetchingJoke: fetchingJoke,
      joke: joke,
      error: error,
      takePhoto: takePhoto,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  bool get permissions => throw _privateConstructorUsedError;
  bool get sayingJoke => throw _privateConstructorUsedError;
  bool get fetchingJoke => throw _privateConstructorUsedError;
  Joke? get joke => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get takePhoto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
  $Res call(
      {bool permissions,
      bool sayingJoke,
      bool fetchingJoke,
      Joke? joke,
      String? error,
      bool takePhoto});

  $JokeCopyWith<$Res>? get joke;
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
    Object? sayingJoke = freezed,
    Object? fetchingJoke = freezed,
    Object? joke = freezed,
    Object? error = freezed,
    Object? takePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as bool,
      sayingJoke: sayingJoke == freezed
          ? _value.sayingJoke
          : sayingJoke // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingJoke: fetchingJoke == freezed
          ? _value.fetchingJoke
          : fetchingJoke // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      takePhoto: takePhoto == freezed
          ? _value.takePhoto
          : takePhoto // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $JokeCopyWith<$Res>? get joke {
    if (_value.joke == null) {
      return null;
    }

    return $JokeCopyWith<$Res>(_value.joke!, (value) {
      return _then(_value.copyWith(joke: value));
    });
  }
}

/// @nodoc
abstract class _$CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateCopyWith(
          _CameraState value, $Res Function(_CameraState) then) =
      __$CameraStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool permissions,
      bool sayingJoke,
      bool fetchingJoke,
      Joke? joke,
      String? error,
      bool takePhoto});

  @override
  $JokeCopyWith<$Res>? get joke;
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
    Object? sayingJoke = freezed,
    Object? fetchingJoke = freezed,
    Object? joke = freezed,
    Object? error = freezed,
    Object? takePhoto = freezed,
  }) {
    return _then(_CameraState(
      permissions: permissions == freezed
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as bool,
      sayingJoke: sayingJoke == freezed
          ? _value.sayingJoke
          : sayingJoke // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingJoke: fetchingJoke == freezed
          ? _value.fetchingJoke
          : fetchingJoke // ignore: cast_nullable_to_non_nullable
              as bool,
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      takePhoto: takePhoto == freezed
          ? _value.takePhoto
          : takePhoto // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraState implements _CameraState {
  const _$_CameraState(
      {this.permissions = false,
      this.sayingJoke = false,
      this.fetchingJoke = false,
      this.joke = null,
      this.error = null,
      this.takePhoto = false});

  @JsonKey(defaultValue: false)
  @override
  final bool permissions;
  @JsonKey(defaultValue: false)
  @override
  final bool sayingJoke;
  @JsonKey(defaultValue: false)
  @override
  final bool fetchingJoke;
  @JsonKey(defaultValue: null)
  @override
  final Joke? joke;
  @JsonKey(defaultValue: null)
  @override
  final String? error;
  @JsonKey(defaultValue: false)
  @override
  final bool takePhoto;

  @override
  String toString() {
    return 'CameraState(permissions: $permissions, sayingJoke: $sayingJoke, fetchingJoke: $fetchingJoke, joke: $joke, error: $error, takePhoto: $takePhoto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CameraState &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.sayingJoke, sayingJoke) ||
                const DeepCollectionEquality()
                    .equals(other.sayingJoke, sayingJoke)) &&
            (identical(other.fetchingJoke, fetchingJoke) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingJoke, fetchingJoke)) &&
            (identical(other.joke, joke) ||
                const DeepCollectionEquality().equals(other.joke, joke)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.takePhoto, takePhoto) ||
                const DeepCollectionEquality()
                    .equals(other.takePhoto, takePhoto)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(sayingJoke) ^
      const DeepCollectionEquality().hash(fetchingJoke) ^
      const DeepCollectionEquality().hash(joke) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(takePhoto);

  @JsonKey(ignore: true)
  @override
  _$CameraStateCopyWith<_CameraState> get copyWith =>
      __$CameraStateCopyWithImpl<_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {bool permissions,
      bool sayingJoke,
      bool fetchingJoke,
      Joke? joke,
      String? error,
      bool takePhoto}) = _$_CameraState;

  @override
  bool get permissions => throw _privateConstructorUsedError;
  @override
  bool get sayingJoke => throw _privateConstructorUsedError;
  @override
  bool get fetchingJoke => throw _privateConstructorUsedError;
  @override
  Joke? get joke => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  bool get takePhoto => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateCopyWith<_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
