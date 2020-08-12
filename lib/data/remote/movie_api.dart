import 'package:dio/dio.dart';
import 'package:flutterapp/data/response/response_list_movie_playing_now.dart';
import 'package:flutterapp/src/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
part 'movie_api.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class MovieApi {
  factory MovieApi(Dio dio, {String baseUrl}) = _MovieApi;

  @GET(
      "/now_playing?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1")
  Future<ResponseListMoviePlayingNow> getListMoviePlayingNow();

  @GET(
      "/upcoming?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1")
  Future<ResponseListMoviePlayingNow> getListMovieUpComing();

  @GET(
      "/top_rated?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=vi&page=1&region=VN")
  Future<ResponseListMoviePlayingNow> getListMovieTopRate();
}
