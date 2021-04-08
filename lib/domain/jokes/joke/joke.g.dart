// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Joke _$_$_JokeFromJson(Map<String, dynamic> json) {
  return _$_Joke(
    text: json['text'] as String,
    duration: Duration(microseconds: json['duration'] as int),
    used: json['used'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_JokeToJson(_$_Joke instance) => <String, dynamic>{
      'text': instance.text,
      'duration': instance.duration.inMicroseconds,
      'used': instance.used,
    };
