import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  String movieName;
  String content;
  bool adultLevel;
  String motherLang;
  String openedDate;

  Movie({
    required this.movieName,
    required this.content,
    required this.adultLevel,
    required this.motherLang,
    required this.openedDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  String toString() {
    return 'Movie{영화제목: $movieName, 내용: $content, +19: $adultLevel, 언어: $motherLang, 개봉일: $openedDate}';
  }
}
