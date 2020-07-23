import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/src/home/list_films.dart';
import 'package:flutterapp/src/home/list_films_coming_soon.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: <Widget>[
                Image.asset(
                  'ic_films.png',
                  width: double.infinity,
                  height: 400.0,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                      child: Text(
                        "AVENGERS: ENDGAME",
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 0, 0, 4.0),
                      child: Text(
                        "SUẤT CHIẾU SỚM",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 4.0),
                  child: Text(
                    "Hành Động",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(" ",
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 10.0,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "2D",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(" ",
                      style: TextStyle(
                        backgroundColor: Colors.white,
                        fontSize: 10,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20h20p",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 10.0, 16.0, 0),
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                          Radius.circular(24.0)), // set rounded corner radius
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(1, 3))
                      ] // make rounded corner of border
                      ),
                  child: Text("Đặt Vé",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontStyle: FontStyle.normal)),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 24.0, 0, 4.0),
                  child: Text(
                    "Phim đang chiếu",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 4.0),
                  child: Text(
                    "Tất Cả",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.cyan,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            SizedBox(height: 200.0, child: ViewFilmsList()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 24.0, 0, 4.0),
                  child: Text(
                    "Phim sắp chiếu",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 4.0),
                  child: Text(
                    "Tất Cả",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.cyan,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: SizedBox(height: 200.0, child: ViewFilmsComingSoon()),
            ),
          ],
        ),
      ),
    );
  }
}
