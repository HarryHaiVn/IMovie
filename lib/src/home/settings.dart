import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isFastPaymentSwitched = false;
  bool isVerifyFingerprintSwitched = false;
  String _chosenTimeValue = "30 giây";
  String _chosenLanguageValue = "Tiếng Việt";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cài đặt ứng dụng'),
      ),
      body: Container(
        color: _getColorFromHex("#ecf0ef"),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 14.0),
                child: Text(
                  "CÀI ĐẶT THANH TOÁN",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Text("Xác nhận thanh toán nhanh",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.help,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: isFastPaymentSwitched,
                      onChanged: (value) {
                        setState(() {
                          isFastPaymentSwitched = value;
                          print(value);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 14.0),
                child: Text(
                  "BẢO MẬT TÀI KHOẢN",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Row(children: <Widget>[
                    Text("Quản lý đăng nhập",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: _getColorFromHex("#dddddd"),
                    )
                  ]),
                ),
              ),
              Divider(height: 2.0),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Row(children: <Widget>[
                    Text("Đổi mật khẩu",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: _getColorFromHex("#dddddd"),
                    )
                  ]),
                ),
              ),
              Divider(height: 2.0),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Text("Tự động khóa ứng dụng",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Spacer(),
                    DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: _getColorFromHex("#dddddd"),
                        ),
                        value: _chosenTimeValue,
                        items: <String>['30 giây', '1 phút', '2 phút', '5 phút']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            _chosenTimeValue = value;
                          });
                        },
                      ),
                    )
                  ]),
                ),
              ),
              Divider(height: 2.0),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Text("Xác thực vân tay",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Spacer(),
                    Switch(
                      value: isVerifyFingerprintSwitched,
                      onChanged: (value) {
                        setState(() {
                          isVerifyFingerprintSwitched = value;
                          print(value);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 14.0, 10.0, 14.0),
                child: Text(
                  "NGÔN NGỮ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
              Container(
                color: _getColorFromHex("#ffffff"),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: <Widget>[
                    Text("Ngôn ngữ/Language",
                        style: TextStyle(
                            color: _getColorFromHex("#6d6d6d"),
                            fontSize: 14.0)),
                    Spacer(),
                    DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: _getColorFromHex("#dddddd"),
                        ),
                        value: _chosenLanguageValue,
                        items: <String>['Tiếng Việt', 'English', 'Japanese']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            _chosenLanguageValue = value;
                          });
                        },
                      ),
                    )
                  ]),
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
