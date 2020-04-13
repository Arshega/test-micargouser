import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
        image: AssetImage('assets/images/gssc_user_logo_small.png'),
        width: 100.0,
        height: 100.0,
        fit: BoxFit.contain,
      ),
    );

    final appBar = AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Color(0xffff4caf50)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
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
      backgroundColor: Colors.white,
      appBar: appBar,
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
              SizedBox(height: 28.0),
              email,
              SizedBox(height: 15.0),
              password,
              SizedBox(height: 24.0),
              Row(children: <Widget>[forgotLabel],)
            ],
          ),
        ),
      ),
    );
  }
}
