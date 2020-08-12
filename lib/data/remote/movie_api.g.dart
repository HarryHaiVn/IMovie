// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MovieApi implements MovieApi {
  _MovieApi(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.themoviedb.org/3/movie';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getListMoviePlayingNow() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/now_playing?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResponseListMoviePlayingNow.fromJson(_result.data);
    return value;
  }

  @override
  getListMovieUpComing() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/upcoming?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResponseListMoviePlayingNow.fromJson(_result.data);
    return value;
  }

  @override
  getListMovieTopRate() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/top_rated?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=vi&page=1&region=VN',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResponseListMoviePlayingNow.fromJson(_result.data);
    return value;
  }
}
