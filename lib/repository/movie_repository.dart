import 'package:flutterapp/data/model/movie_model.dart';

abstract class MovieRepository {
  Future<List<MovieModel>> getListMoviePlayingNow();

  Future<List<MovieModel>> getListMovieUpComing();

  Future<List<MovieModel>> getListMovieTopRate();
}
