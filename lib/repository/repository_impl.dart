import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/remote/movie_api.dart';
import 'package:flutterapp/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieApi _movieApi;

  MovieRepositoryImpl(MovieApi movieApi) {
    this._movieApi = movieApi;
  }

  @override
  Future<List<MovieNowPlay>> getListMoviePlayingNow() {
    return _movieApi.getListMoviePlayingNow();
  }

  @override
  Future<List<MovieNowPlay>> getListMovieUpComing() {
    return _movieApi.getListMovieUpComing();
  }
}
