import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';
@JsonSerializable()
class MovieModel {
  String poster_path;
  String title;
  String overview;
  String release_date;

  MovieModel({this.poster_path, this.title, this.overview, this.release_date});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
