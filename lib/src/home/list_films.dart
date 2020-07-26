import 'package:flutter/material.dart';

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

class FilmsListViewState extends State<FilmsListView> {
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
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
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
                              "https://genk.mediacdn.vn/thumb_w/640/2019/11/17/12-1573986740140507895242-crop-15739867493461517382242.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
//                      color: Colors.grey,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(items[position],
                          overflow: TextOverflow.ellipsis),
                      subtitle: Text(
                        'harryhaivn@gmail.com',
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
}
