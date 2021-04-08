import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  factory Joke(
      {required String text,
      required Duration duration,
      @Default(false) bool used}) = _Joke;

  const Joke._();

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
