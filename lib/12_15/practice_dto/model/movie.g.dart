// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      movieName: json['movieName'] as String,
      content: json['content'] as String,
      adultLevel: json['adultLevel'] as bool,
      motherLang: json['motherLang'] as String,
      openedDate: json['openedDate'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'movieName': instance.movieName,
      'content': instance.content,
      'adultLevel': instance.adultLevel,
      'motherLang': instance.motherLang,
      'openedDate': instance.openedDate,
    };
