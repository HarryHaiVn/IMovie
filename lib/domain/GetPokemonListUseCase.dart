import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/domain/BaseUseCase.dart';
import 'package:flutterapp/repository/movie_repository.dart';

class GetMovieListUseCase {
  MovieRepository _movieRepository;

  GetMovieListUseCase(MovieRepository pokemonRepository) {
    this._movieRepository = pokemonRepository;
  }

  @override
  Future<List<MovieNowPlay>> getListMoviePlayingNow() {
    return _movieRepository.getListMoviePlayingNow();
  }
  @override
  Future<List<MovieNowPlay>> getListMovieUpComing() {
    return _movieRepository.getListMovieUpComing();
  }
}
