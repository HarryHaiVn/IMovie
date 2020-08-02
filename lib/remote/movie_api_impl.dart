import 'dart:convert';

import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/remote/movie_api.dart';
import 'package:http/http.dart';

class MovieApiImpl implements MovieApi {
  @override
  Future<List<MovieNowPlay>> getListMoviePlayingNow() async {
    try {
      final response = await get(
          'https://api.themoviedb.org/3/movie/now_playing?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1');
      if (response.statusCode == 200) {
        Map<String, dynamic> mapResponse = json.decode(response.body);
        var list = mapResponse['results'] as List;
        List<MovieNowPlay> listMovie = List();
        for (var idx = 0; idx < list.length; idx++) {
          MovieNowPlay movieNowPlay = MovieNowPlay(
              "https://image.tmdb.org/t/p/w500/" +
                  list.asMap()[idx]['poster_path'],
              list.asMap()[idx]['title'],
              list.asMap()[idx]['overview'],
              list.asMap()[idx]['release_date']);
          listMovie.add(movieNowPlay);
        }
        return listMovie;
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("There was a problem with the connection");
    }
  }

  @override
  Future<List<MovieNowPlay>> getListMovieUpComing() async {
    try {
      final response = await get(
          'https://api.themoviedb.org/3/movie/upcoming?api_key=b743b8d7b6ef6c0a3bb7d1d1e685d4a5&language=en-US&page=1');
      if (response.statusCode == 200) {
        Map<String, dynamic> mapResponse = json.decode(response.body);
        var list = mapResponse['results'] as List;
        List<MovieNowPlay> listMovie = List();
        for (var idx = 0; idx < list.length; idx++) {
          MovieNowPlay movieNowPlay = MovieNowPlay(
              "https://image.tmdb.org/t/p/w500/" +
                  list.asMap()[idx]['poster_path'],
              list.asMap()[idx]['title'],
              list.asMap()[idx]['overview'],
              list.asMap()[idx]['release_date']);
          listMovie.add(movieNowPlay);
        }
        return listMovie;
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("There was a problem with the connection");
    }
  }
}
