import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _getColorFromHex("#ecf0ef"),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Thông tin cá nhân'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          height: 400.0,
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipOval(
                  child: SizedBox(
                    width: 70.0,
                    height: 70.0,
                    child: Image.asset(
                      "ic_profile.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Họ và tên *:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("NGUYỄN MINH HẢI",
                      style: TextStyle(
                          color: _getColorFromHex("#6d6d6d"), fontSize: 14.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Số điện thoại:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("0339049791",
                      style: TextStyle(
                          color: _getColorFromHex("#6d6d6d"), fontSize: 14.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Email *:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("harryhaivn@gmail.com",
                      style: TextStyle(
                          color: _getColorFromHex("#6d6d6d"), fontSize: 14.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: missing_return
  Color _getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
