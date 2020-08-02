import 'package:flutterapp/data/movie_model.dart';

abstract class MovieApi {
  Future<List<MovieNowPlay>> getListMoviePlayingNow();
  Future<List<MovieNowPlay>> getListMovieUpComing();
}
