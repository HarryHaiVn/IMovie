import 'package:flutterapp/data/model/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_list_movie_playing_now.g.dart';

@JsonSerializable(explicitToJson: true)
class ResponseListMoviePlayingNow {
  List<MovieModel> results;
  int page;
  int totalResults;
  int totalPages;

  ResponseListMoviePlayingNow(
      {this.results,
      this.page,
      this.totalResults,
      this.totalPages});
  factory ResponseListMoviePlayingNow.fromJson(Map<String, dynamic> json) =>
      _$ResponseListMoviePlayingNowFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseListMoviePlayingNowToJson(this);
}
