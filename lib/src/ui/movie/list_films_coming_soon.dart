import 'package:flutter/material.dart';
import 'package:flutterapp/data/movie_model.dart';
import 'package:flutterapp/src/blocs/movie_bloc.dart';

class ViewFilmsComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FilmsComingSoonListView();
  }
}

class FilmsComingSoonListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilmsComingSoonViewState();
  }
}

class FilmsComingSoonViewState extends State<FilmsComingSoonListView> {
  final MovieBloc _movieBloc = new MovieBloc();
  final movieUpComingList = [
    'Black Widow',
    'The Eternals',
    'Shang-Chi',
    'Bloodshot',
    'Thor: Love and Thunder',
    'Bloodshot',
    'Doctor Strange',
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
    _movieBloc.getListMovieUpComing();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MovieNowPlay>>(
      stream: _movieBloc.movieUpComingList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          var movieUpComingList = snapshot.data;
          return buildListViewWidget(movieUpComingList);
        }
      },
    );
  }
}

Widget buildListViewWidget(List<MovieNowPlay> movieUpComingList) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movieUpComingList.length,
      itemExtent: 200.0,
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
                            movieUpComingList[position].posterPath,
                          ),
                          fit: BoxFit.cover,
//                        colorFilter: ColorFilter.mode(
//                          Colors.black26,
//                          BlendMode.darken,
//                        ),
                        ),
//                      color: Colors.grey,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(movieUpComingList[position].title,
                        overflow: TextOverflow.ellipsis),
                    subtitle: Text(
                      movieUpComingList[position].release_date,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Icon(
                      Icons.book,
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
