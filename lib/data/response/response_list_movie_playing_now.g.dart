// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_movie_playing_now.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseListMoviePlayingNow _$ResponseListMoviePlayingNowFromJson(
    Map<String, dynamic> json) {
  return ResponseListMoviePlayingNow(
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    page: json['page'] as int,
    totalResults: json['totalResults'] as int,
    totalPages: json['totalPages'] as int,
  );
}

Map<String, dynamic> _$ResponseListMoviePlayingNowToJson(
        ResponseListMoviePlayingNow instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson())?.toList(),
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
    };
