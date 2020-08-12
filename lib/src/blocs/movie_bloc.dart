import 'package:flutterapp/data/model/movie_model.dart';
import 'package:flutterapp/repository/repository_impl.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  var moviePlayingNowListSubject = PublishSubject<List<MovieModel>>();
  var movieUpComingListSubject = PublishSubject<List<MovieModel>>();
  var movieTopRateListSubject = PublishSubject<List<MovieModel>>();

  Observable<List<MovieModel>> get moviePlayingNowList =>
      moviePlayingNowListSubject.stream;

  Observable<List<MovieModel>> get movieUpComingList =>
      movieUpComingListSubject.stream;

  Observable<List<MovieModel>> get movieTopRateList =>
      movieTopRateListSubject.stream;

  MovieRepositoryImpl _movieRepositoryImpl = MovieRepositoryImpl();

  void getListMoviePlaying() async {
    try {
      moviePlayingNowListSubject = PublishSubject<List<MovieModel>>();
      moviePlayingNowListSubject.sink
          .add(await _movieRepositoryImpl.getListMoviePlayingNow());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      moviePlayingNowListSubject.sink.addError(e);
    }
  }

  void getListMovieUpComing() async {
    try {
      movieUpComingListSubject = PublishSubject<List<MovieModel>>();
      movieUpComingListSubject.sink
          .add(await _movieRepositoryImpl.getListMovieUpComing());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      movieUpComingListSubject.sink.addError(e);
    }
  }

  void getListMovieTopRate() async {
    try {
      movieTopRateListSubject = PublishSubject<List<MovieModel>>();
      movieTopRateListSubject.sink
          .add(await _movieRepositoryImpl.getListMovieUpComing());
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      movieTopRateListSubject.sink.addError(e);
    }
  }

  void closeObservable() {
    moviePlayingNowListSubject.close();
    movieUpComingListSubject.close();
    movieTopRateListSubject.close();
  }
}
