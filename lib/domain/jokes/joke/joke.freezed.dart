// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Joke _$JokeFromJson(Map<String, dynamic> json) {
  return _Joke.fromJson(json);
}

/// @nodoc
class _$JokeTearOff {
  const _$JokeTearOff();

  _Joke call(
      {required String text, required Duration duration, bool used = false}) {
    return _Joke(
      text: text,
      duration: duration,
      used: used,
    );
  }

  Joke fromJson(Map<String, Object> json) {
    return Joke.fromJson(json);
  }
}

/// @nodoc
const $Joke = _$JokeTearOff();

/// @nodoc
mixin _$Joke {
  String get text => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res>;
  $Res call({String text, Duration duration, bool used});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res> implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  final Joke _value;
  // ignore: unused_field
  final $Res Function(Joke) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? duration = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$JokeCopyWith(_Joke value, $Res Function(_Joke) then) =
      __$JokeCopyWithImpl<$Res>;
  @override
  $Res call({String text, Duration duration, bool used});
}

/// @nodoc
class __$JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res>
    implements _$JokeCopyWith<$Res> {
  __$JokeCopyWithImpl(_Joke _value, $Res Function(_Joke) _then)
      : super(_value, (v) => _then(v as _Joke));

  @override
  _Joke get _value => super._value as _Joke;

  @override
  $Res call({
    Object? text = freezed,
    Object? duration = freezed,
    Object? used = freezed,
  }) {
    return _then(_Joke(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Joke extends _Joke {
  _$_Joke({required this.text, required this.duration, this.used = false})
      : super._();

  factory _$_Joke.fromJson(Map<String, dynamic> json) =>
      _$_$_JokeFromJson(json);

  @override
  final String text;
  @override
  final Duration duration;
  @JsonKey(defaultValue: false)
  @override
  final bool used;

  @override
  String toString() {
    return 'Joke(text: $text, duration: $duration, used: $used)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Joke &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.used, used) ||
                const DeepCollectionEquality().equals(other.used, used)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(used);

  @JsonKey(ignore: true)
  @override
  _$JokeCopyWith<_Joke> get copyWith =>
      __$JokeCopyWithImpl<_Joke>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JokeToJson(this);
  }
}

abstract class _Joke extends Joke {
  factory _Joke({required String text, required Duration duration, bool used}) =
      _$_Joke;
  _Joke._() : super._();

  factory _Joke.fromJson(Map<String, dynamic> json) = _$_Joke.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  Duration get duration => throw _privateConstructorUsedError;
  @override
  bool get used => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JokeCopyWith<_Joke> get copyWith => throw _privateConstructorUsedError;
}
