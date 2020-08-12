import 'package:flutter/material.dart';
import 'package:flutterapp/data/model/movie_model.dart';
import 'package:flutterapp/src/blocs/movie_bloc.dart';
import 'package:flutterapp/src/ui/common/widget.dart';
import 'package:flutterapp/src/utils/Utils.dart';
import 'package:flutterapp/src/utils/utils.dart';

class ViewFilmsTopRateList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FilmsTopRateListView();
  }
}

class FilmsTopRateListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilmsTopRateListViewState();
  }
}

class FilmsTopRateListViewState extends State<FilmsTopRateListView> {
  final MovieBloc _movieBloc = new MovieBloc();

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
    return StreamBuilder<List<MovieModel>>(
      stream: _movieBloc.movieUpComingList,
      // ignore: missing_return
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return buildCircularProgressIndicatorWidget();
        }
        if (snapshot.hasError) {
          Utils.showSnackBar(context, snapshot.error.toString());
          return buildListViewNoDataWidget();
        }
        if (snapshot.connectionState == ConnectionState.active) {
          var movieUpComingList = snapshot.data;
          return buildListViewWidget(movieUpComingList);
        }
      },
    );
  }

  Widget buildListViewWidget(List<MovieModel> movieTopRateList) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieTopRateList.length,
        itemExtent: 150.0,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
            child: ClipPath(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: ClipOval(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              Utils.loadedPathImage(
                                  movieTopRateList[position].poster_path),
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                      title: Center(
                    child: Text(
                      movieTopRateList[position].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  )),
                ],
              ),
            ),
          );
        });
  }
}
