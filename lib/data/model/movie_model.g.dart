// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return MovieModel(
    poster_path: json['poster_path'] as String,
    title: json['title'] as String,
    overview: json['overview'] as String,
    release_date: json['release_date'] as String,
  );
}

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'poster_path': instance.poster_path,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
    };
