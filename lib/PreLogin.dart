import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';

class PreLoginPage extends StatefulWidget {
  static String tag = 'prelogin-page';
  @override
  _PreLoginPageState createState() => new _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
        image: AssetImage('assets/images/gssc_user.png'),
      ),
    );

    final loginButton = RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
      padding: EdgeInsets.all(12),
      color: Color(0xff4cae50),
      child: Text('LOGIN', style: TextStyle(color: Colors.white)),
    );

    final signUpButton = RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(SignupPage.tag);
      },
      padding: EdgeInsets.all(12),
      color: Color(0xff4cae50),
      child: Text('SIGNUP', style: TextStyle(color: Colors.white)),
    );

    final facebookButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: SignInButton(
          Buttons.Facebook,
          onPressed: () {},
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/crystals_green.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              loginButton,
              SizedBox(height: 8.0),
              signUpButton,
              SizedBox(height: 24.0),
              facebookButton,
            ],
          ),
        ),
      ),
    );
  }
}
