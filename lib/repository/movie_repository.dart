
import 'package:flutterapp/data/movie_model.dart';

abstract class MovieRepository {
  Future<List<MovieNowPlay>> getListMoviePlayingNow();
  Future<List<MovieNowPlay>> getListMovieUpComing();
}