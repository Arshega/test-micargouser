import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static String tag = 'signup-page';
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

    final confirmPassword = Theme(
      data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Confirm Password",
          labelStyle:
          theme.textTheme.caption.copyWith(color: Color(0xffff4caf50)),
        ),
      ),
    );

    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 14.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    final setupTermsAndConditions = RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'By using Micargo, you agree to the'),
          TextSpan(
              text: ' Micargo Terms Of Use ',
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = () {}),
          TextSpan(text: ' and '),
          TextSpan(
              text: ' Privacy Policy ',
              style: linkStyle,
              recognizer: TapGestureRecognizer()..onTap = () {}),
        ],
      ),
    );

    final agreeAndContinue = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "myRoute");
      },
      child: new Text(
        'Agree & Continue',
        style: TextStyle(
            color: Color(0xffff4caf50),
            fontWeight: FontWeight.bold
        ),
      ),
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
              SizedBox(height: 15.0),
              confirmPassword,
              SizedBox(height: 15.0),
              setupTermsAndConditions,
              SizedBox(height: 30.0),
              Center(child: agreeAndContinue,),
            ],
          ),
        ),
      ),
    );
  }
}
