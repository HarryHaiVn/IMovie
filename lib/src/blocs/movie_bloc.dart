import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/domain/GetPokemonListUseCase.dart';
import 'package:flutterapp/remote/movie_api_impl.dart';
import 'package:flutterapp/repository/repository_impl.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  var moviePlayingNowListSubject = PublishSubject<List<MovieNowPlay>>();
  var movieUpComingListSubject = PublishSubject<List<MovieNowPlay>>();

  Observable<List<MovieNowPlay>> get moviePlayingNowList =>
      moviePlayingNowListSubject.stream;

  Observable<List<MovieNowPlay>> get movieUpComingList =>
      movieUpComingListSubject.stream;
  GetMovieListUseCase getMoviePlayingNowListUseCase =
      GetMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));

  GetMovieListUseCase getMovieUpComingUseCase =
      GetMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));

  void getListMoviePlaying() async {
    try {
      moviePlayingNowListSubject = PublishSubject<List<MovieNowPlay>>();
      moviePlayingNowListSubject.sink
          .add(await getMoviePlayingNowListUseCase.getListMoviePlayingNow());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      moviePlayingNowListSubject.sink.addError(e);
    }
  }

  void getListMovieUpComing() async {
    try {
      movieUpComingListSubject = PublishSubject<List<MovieNowPlay>>();
      movieUpComingListSubject.sink.add(await getMovieUpComingUseCase.getListMovieUpComing());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      movieUpComingListSubject.sink.addError(e);
    }
  }

  void closeObservable() {
    moviePlayingNowListSubject.close();
    movieUpComingListSubject.close();
  }
}
