import 'package:flutter/material.dart';
import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/src/blocs/movie_bloc.dart';

class ViewFilmsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FilmsListView();
  }
}

class FilmsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilmsListViewState();
  }
}

class FilmsListViewState extends State<FilmsListView>
    with WidgetsBindingObserver {
  final MovieBloc _movieBloc = new MovieBloc();

  final items = [
    'Avengers: endgame',
    'Bloodshot',
    'Avengers: endgame',
    'Bloodshot',
    'Avengers: endgame',
    'Bloodshot',
    'Avengers: endgame',
    'Bloodshot',
    'Avengers: endgame'
  ];

  @override
  void initState() {
    super.initState();
    refresh();
  }

  @override
  void dispose() {
    _movieBloc.closeObservable();
    super.dispose();
  }

  void refresh() {
    _movieBloc.getListMoviePlaying();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MovieNowPlay>>(
      stream: _movieBloc.moviePlayingNowList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          var moviePlayingNowList = snapshot.data;
          return buildListViewWidget(moviePlayingNowList);
        }
      },
    );
  }
}

Widget buildListViewWidget(List<MovieNowPlay> moviePlayingNowList) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: moviePlayingNowList.length,
      itemExtent: 300.0,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            child: ClipPath(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            moviePlayingNowList[position].posterPath,
                          ),
                          fit: BoxFit.cover,
                        ),
//                      color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(moviePlayingNowList[position].title,
                        overflow: TextOverflow.ellipsis),
                    subtitle: Text("Ngày chiếu : "+
                      moviePlayingNowList[position].release_date,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(
                      Icons.bookmark,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              clipper: ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0))),
            ),
          ),
        );
      });
}
