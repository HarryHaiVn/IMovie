import 'package:flutter/material.dart';

class ViewFilmsSpecialList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FilmsSpecialListView();
  }
}

class FilmsSpecialListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SpecialListViewState();
  }
}

class SpecialListViewState extends State<FilmsSpecialListView> {
  final items = [
    'The Eternals',
    'Bloodshot',
    'Thor: Love and Thunder',
    'Black Widow',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
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
                              "https://cdn.tuoitre.vn/thumb_w/980/2019/7/21/photo-4-15636783649951492119381.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                      title: Center(
                    child: Text(
                      items[position],
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
