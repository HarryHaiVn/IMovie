import 'package:dio/dio.dart';
import 'package:flutterapp/data/model/movie_model.dart';
import 'package:flutterapp/data/remote/movie_api.dart';
import 'package:flutterapp/repository/movie_repository.dart';
import 'package:logger/logger.dart';

class MovieRepositoryImpl implements MovieRepository {
  final _movieApi = MovieApi(Dio(BaseOptions(contentType: "application/json")));

  @override
  Future<List<MovieModel>> getListMoviePlayingNow() async {
    Logger().i("mkkkkkkk-------");
    final response = await _movieApi.getListMoviePlayingNow();
    Logger().i("mkkkkkkk-------" + response.toString());
    return response.results;
  }

  @override
  Future<List<MovieModel>> getListMovieUpComing() async {
    final response = await _movieApi.getListMovieUpComing();
    return response.results;
  }

  @override
  Future<List<MovieModel>> getListMovieTopRate() async {
    final response = await _movieApi.getListMovieTopRate();
    return response.results;
  }
}
