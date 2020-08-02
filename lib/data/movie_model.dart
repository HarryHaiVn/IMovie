class MovieNowPlay {
  final String posterPath;
  final String title;
  final String overview;
  final String release_date;

  MovieNowPlay(this.posterPath, this.title, this.overview, this.release_date);

  MovieNowPlay.fromJson(Map<String, dynamic> json)
      : posterPath = json['posterPath'],
        title = json['title'],
        release_date = json['release_date'],
        overview = json['overview'];
}
