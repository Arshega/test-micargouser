import 'package:flutter/material.dart';
import 'package:micargouser/Profile.dart';
import 'HomePage.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  var profile = Profile;
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTxtController = TextEditingController();
  final passwordTxtController = TextEditingController();

  @override
  void dispose() {
    emailTxtController.dispose();
    passwordTxtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
        width: 100.0,
        height: 100.0,
        image: AssetImage('assets/images/logo.png'),
      ),
    );

    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Color(0xffff4caf50)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
//            http.post(
//              url,
//              headers: {
//                'x-apikey':
//                    '',
//                '': '',
//              },
//              body: {
//                "username": emailTxtController.text,
//                "password": passwordTxtController.text,
//              },
//            ).then(
//              (value){
//                if(value.statusCode == 200) {
//                  Navigator.of(context).pushNamed(HomePage.tag);
//                }
//              }
//            );
          },
          child: Text("LOGIN"),
          textColor: Color(0xffff4caf50),
        ),
      ],
      centerTitle: true,
    );

    final theme = Theme.of(context);
    final email = Theme(
      data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
      child: TextFormField(
        controller: emailTxtController,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          labelText: "Email Address",
          labelStyle:
              theme.textTheme.caption.copyWith(color: Color(0xffff4caf50)),
        ),
      ),
    );

    final password = Theme(
      data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
      child: TextFormField(
        controller: passwordTxtController,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle:
              theme.textTheme.caption.copyWith(color: Color(0xffff4caf50)),
        ),
      ),
    );

    final forgotLabel = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "myRoute");
      },
      child: new Text("Forgot your password?"),
    );

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/crystals_green.png"),
              fit: BoxFit.fill,
            ),
          ),
          child:Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                SizedBox(height: 28.0),
                SizedBox(height: 28.0),
                email,
                SizedBox(height: 15.0),
                password,
                SizedBox(height: 24.0),
                Row(
                  children: <Widget>[forgotLabel],
                ),
                SizedBox(height: 150.0),
              ],
            ),
          ),
        ),
        new Positioned(
          //Place it at the top, and not use the entire screen
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: appBar
        ),
      ],
    ));

  }
}
