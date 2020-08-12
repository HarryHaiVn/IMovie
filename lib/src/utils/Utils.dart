// ignore: camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/src/utils/constants.dart';
import 'package:logger/logger.dart';

class Utils {
  static validateEmail(String email) {
    Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(email))
      return 'Invalid username';
    else
      return null;
  }

  static showSnackBar(BuildContext context, String errorMessage) async {
    await Future.delayed(Duration.zero);
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(errorMessage)));
  }

  static loadedPathImage(String path) {
    Logger().i("m444444" + path.toString());
    return BASE_URL_IMAGE + path;
  }
}
