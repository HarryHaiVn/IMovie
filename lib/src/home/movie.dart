import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/src/home/list_films.dart';
import 'package:flutterapp/src/home/list_films_coming_soon.dart';
import 'package:flutterapp/src/home/list_films_special.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  final PageController _controller = PageController(initialPage: 0);
  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                SizedBox(
                  height: 250.0,
                  width: double.infinity,
                  child: Container(
                    color: Colors.grey,
                    child: PageView(
                      controller: _controller,
                      children: <Widget>[
                        Image.asset(
                          'ic_films.png',
                          width: double.infinity,
                          height: 250.0,
                          fit: BoxFit.cover,
                        ),
                        Container(
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
                        Image.asset(
                          'ic_films.png',
                          width: double.infinity,
                          height: 250.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                new Container(
//                  color: Colors.grey[800].withOpacity(0.3),
                  padding: const EdgeInsets.all(20.0),
                  child: new DotsIndicator(
                    controller: _controller,
                    itemCount: 3,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 4.0, 0, 0),
                    child: Text(
                      "AVENGERS: ENDGAME",
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0.0),
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
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0.0, 0, 0.0),
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
                  margin: EdgeInsets.fromLTRB(30.0, 0.0, 16.0, 0),
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
                        decoration: TextDecoration.underline,
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
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: SizedBox(height: 200.0, child: ViewFilmsComingSoon()),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 24.0, 0, 4.0),
                child: Text(
                  "Phim đặc biệt (4D/IMAX/STARIUM)",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              child: SizedBox(height: 200.0, child: ViewFilmsSpecialList()),
            ),
          ],
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  Indicator({
    this.controller,
    this.itemCount: 0,
  }) : assert(controller != null);

  /// PageView Controller
  final PageController controller;

  /// Number of indicators
  final int itemCount;

  /// Ordinary colours
  final Color normalColor = Colors.blue;

  /// Selected color
  final Color selectedColor = Colors.red;

  /// Size of points
  final double size = 8.0;

  /// Spacing of points
  final double spacing = 4.0;

  /// Point Widget
  Widget _buildIndicator(
      int index, int pageCount, double dotSize, double spacing) {
    // Is the current page selected?
    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page.round() % pageCount : 0);

    return new Container(
      height: size,
      width: size + (2 * spacing),
      child: new Center(
        child: new Material(
          color: isCurrentPageSelected ? selectedColor : normalColor,
          type: MaterialType.circle,
          child: new Container(
            width: dotSize,
            height: dotSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, (int index) {
        return _buildIndicator(index, itemCount, size, spacing);
      }),
    );
  }
}

class DotsIndicator extends AnimatedWidget {
  DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  /// The PageController that this DotsIndicator is representing.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the dots.
  ///
  /// Defaults to `Colors.white`.
  final Color color;

  // The base size of the dots
  static const double _kDotSize = 8.0;

  // The increase in the size of the selected dot
  static const double _kMaxZoom = 2.0;

  // The distance between the center of each dot
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Material(
        color: color,
        type: MaterialType.circle,
        child: new Container(
          width: _kDotSize * zoom,
          height: _kDotSize * zoom,
          child: new InkWell(
            onTap: () => onPageSelected(index),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
