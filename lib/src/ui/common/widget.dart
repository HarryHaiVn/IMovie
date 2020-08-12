import 'package:flutter/material.dart';

Widget buildListViewNoDataWidget() {
  return Expanded(
    child: Center(
      child: Text("No Data Available"),
    ),
  );
}

Widget buildCircularProgressIndicatorWidget() {
  return Expanded(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
