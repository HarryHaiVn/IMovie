import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/src/ui/home/home.dart';
import 'package:flutterapp/src/ui/login/register_page.dart';
import 'package:flutterapp/src/utils/appLocalizations.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = new RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 100.0,
                width: 100.0,
                child: Image.asset('ic_logo.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  AppLocalizations.of(context).translate('login_text_title'),
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                AppLocalizations.of(context).translate('login_text_sub_title'),
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60.0, 0, 20),
                      child: TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return AppLocalizations.of(context)
                                .translate('login_text_email_error');
                          } else if (!emailRegex.hasMatch(value)) {
                            return AppLocalizations.of(context)
                                .translate('login_text_email_valid');
                          } else {
                            return null;
                          }
                        },
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)
                                .translate('login_text_email'),
                            prefixIcon: Container(
                                width: 50, child: Image.asset("ic_mail.png")),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCED0D2), width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)))),
                      ),
                    ),
                    TextFormField(
                      controller: _passController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return AppLocalizations.of(context)
                              .translate('login_text_password');
                        } else if (value.length < 8) {
                          return AppLocalizations.of(context)
                              .translate('login_text_password_valid');
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)
                              .translate('login_text_password'),
                          prefixIcon: Container(
                              width: 50, child: Image.asset("ic_phone.png")),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffCED0D2), width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)))),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 40)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(AppLocalizations.of(context)
                      .translate('login_text_forgot'),
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: _onLoginClick,
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('login_text_login'),
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: AppLocalizations.of(context)
                          .translate('login_text_new_user'),
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                            text: AppLocalizations.of(context)
                                .translate('login_text_sign_up'),
                            style: TextStyle(
                                color: Color(0xff3277D8), fontSize: 16))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLoginClick() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
//    final FormState form = _formKey.currentState;
//    if (form.validate()) {
//      Navigator.of(context)
//          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
//    } else {
//      print('Form is invalid');
//    }
  }
}
