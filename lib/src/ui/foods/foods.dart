import 'package:flutter/material.dart';
import 'package:flutterapp/src/ui/foods/list_foods.dart';

class Foods extends StatefulWidget {
  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Foods'),
      ),
      body: ViewFoodsList(),
    );
  }
}
