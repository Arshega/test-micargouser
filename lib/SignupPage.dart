import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_validator/email_validator.dart';
import 'CreateProfilePage.dart';

class SignupPage extends StatefulWidget {
  static String tag = 'signup-page';
  @override
  _SignupPageState createState() => new _SignupPageState();
}

_termsURL() async {
  const url = 'https://www.micab.co/support/toc/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_privacyURL() async {
  const url = 'https://www.micab.co/support/privacy-policy/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password, _confirmPassword = "";

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _confirmPasswordFocusNode = FocusNode();

  final emailTxtController = TextEditingController();
  final passwordTxtController = TextEditingController();
  final confirmPasswordTxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
        image: AssetImage('assets/images/logo.png'),
        width: 100.0,
        height: 100.0,
        fit: BoxFit.contain,
      ),
    );

    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Color(0xffff4caf50)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
    );

    final theme = Theme.of(context);
    Widget emailInput() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: emailTxtController,
          focusNode: _emailFocusNode,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: "Email",
              hintText: "e.g abc@gmail.com",
              labelStyle:
                  theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.next,
          validator: (email) =>
              EmailValidator.validate(email) ? null : "Invalid email address",
          onSaved: (email) => _email = email,
          onFieldSubmitted: (_) {
            fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
          },
        ),
      );
    }

    Widget passwordInput() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: passwordTxtController,
          focusNode: _passwordFocusNode,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
              labelText: "Password",
              labelStyle:
                  theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.next,
          validator: (password) {
            if (password.length < 6) {
              return 'Password should have at least 6 characters';
            } else
              return null;
          },
          onFieldSubmitted: (_) {
            fieldFocusChange(
                context, _passwordFocusNode, _confirmPasswordFocusNode);
          },
          onSaved: (password) => _password = password,
        ),
      );
    }

    Widget confirmPasswordInput() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: confirmPasswordTxtController,
          focusNode: _confirmPasswordFocusNode,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
              labelText: "Confirm Password",
              labelStyle:
                  theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.done,
          validator: (confirmPassword) {
            if (confirmPassword.compareTo(passwordTxtController.text) == 1 ||
                confirmPassword.compareTo(passwordTxtController.text) == -1) {
              return 'Password do not match';
            } else
              return null;
          },
          onSaved: (confirmPassword) => _confirmPassword = confirmPassword,
        ),
      );
    }

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
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _termsURL();
                }),
          TextSpan(text: ' and '),
          TextSpan(
              text: ' Privacy Policy ',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _privacyURL();
                }),
        ],
      ),
    );

    final agreeAndContinue = GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(CreateProfilePage.tag);
//        if (_formKey.currentState.validate()) {
//          _formKey.currentState.save();
//          print(
//              "Email: $_email\nPassword: $_password\nConfirmPassword: $_confirmPassword");
//          Navigator.of(context).pushNamed(CreateProfilePage.tag);
//        }
      },
      child: new Text(
        'Agree & Continue',
        style: TextStyle(color: Color(0xffff4caf50), fontSize: 18.0),
      ),
    );

    final signUpForm = Container(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              logo,
              SizedBox(height: 28.0),
              emailInput(),
              SizedBox(height: 10.0),
              passwordInput(),
              SizedBox(height: 10.0),
              confirmPasswordInput(),
              SizedBox(height: 20.0),
              setupTermsAndConditions,
              SizedBox(height: 30.0),
              Center(
                child: agreeAndContinue,
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //My container or any other widget
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/crystals_green.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(child: signUpForm),
          ),
          new Positioned(
              //Place it at the top, and not use the entire screen
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: appBar),
        ],
      ),
    );
  }
}
