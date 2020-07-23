import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  height: 400,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Text(
                        "AVENGERS: ENDGAME",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 4),
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
                  padding: EdgeInsets.fromLTRB(16, 4, 0, 4),
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
                        fontSize: 10,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                  child: Text(
                    "2D",
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
                        fontSize: 10,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
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
                  margin: EdgeInsets.fromLTRB(30, 10, 17, 0),
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                          Radius.circular(24)), // set rounded corner radius
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            offset: Offset(1, 3))
                      ] // make rounded corner of border
                      ),
                  child: Text("Mua Vé",
                      style: TextStyle(
                          fontSize: 14,
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
                  padding: EdgeInsets.fromLTRB(16, 24, 0, 4),
                  child: Text(
                    "Phim đang chiếu",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 17, 4),
                  child: Text(
                    "Tất Cả",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.cyan,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, position) {
                  return Card(
                    margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        position.toString(),
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 0, 4),
                  child: Text(
                    "Phim sắp chiếu",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 24, 17, 4),
                  child: Text(
                    "Tất Cả",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.cyan,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        position.toString(),
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
