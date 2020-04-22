import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_validator/email_validator.dart';

class CreateProfilePage extends StatefulWidget {
  static String tag = 'createprofile-page';
  @override
  _CreateProfilePageState createState() => new _CreateProfilePageState();
}

void fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

class _CreateProfilePageState extends State<CreateProfilePage> {

  final _formKey = GlobalKey<FormState>();

  String _firstName, _lastName, _phoneNumber = "";

  FocusNode _firstNameFocusNode = FocusNode();
  FocusNode _lastNameFocusNode = FocusNode();
  FocusNode _phoneNumberFocusNode = FocusNode();

  final firstNameTxtController = TextEditingController();
  final lastNameTxtController = TextEditingController();
  final phoneNumberTxtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final logo = GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: CircleAvatar(
          radius: 50.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/profile_green.png"),
        ),
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
          },
          child: Text("SEND"),
          textColor: Color(0xffff4caf50),
        ),
      ],
      centerTitle: true,
    );

    final theme = Theme.of(context);
    Widget firstName() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: firstNameTxtController,
          focusNode: _firstNameFocusNode,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: "First Name",
              hintText: "e.g Juan",
              labelStyle:
              theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.next,
          validator: (name) {
            if (name.isEmpty) {
              return 'First Name is required';
            } else
              return null;
          },
          onSaved: (name) => _firstName = name,
          onFieldSubmitted: (_) {
            fieldFocusChange(context, _firstNameFocusNode, _lastNameFocusNode);
          },
        ),
      );
    }

    Widget lastName() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: lastNameTxtController,
          focusNode: _lastNameFocusNode,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "e.g Luna",
              labelStyle:
              theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.next,
          validator: (lastName) {
            if (lastName.isEmpty) {
              return 'Last Name is required';
            } else
              return null;
          },
          onSaved: (lastName) => _lastName = lastName,
          onFieldSubmitted: (_) {
            fieldFocusChange(context, _lastNameFocusNode, _phoneNumberFocusNode);
          },
        ),
      );
    }

    Widget phoneNumber() {
      return Theme(
        data: theme.copyWith(primaryColor: Color(0xffff4caf50)),
        child: TextFormField(
          controller: phoneNumberTxtController,
          focusNode: _phoneNumberFocusNode,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Phone Number",
              hintText: "e.g 923XXXXXX",
              prefixText: '+63 ',
              labelStyle:
              theme.textTheme.caption.copyWith(color: Color(0xffff4caf50))),
          textInputAction: TextInputAction.done,
          validator: (phone) {
            if (phone.length==10) {
              return 'Phone Number required';
            } else
              return null;
          },
          onSaved: (phone) => _phoneNumber = phone,
        ),
      );
    }

    final agreeAndContinue = Text(
        'The system will send a SMS to your mobile number to verify your account.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 12.0),
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
              firstName(),
              SizedBox(height: 10.0),
              lastName(),
              SizedBox(height: 10.0),
              phoneNumber(),
              SizedBox(height: 30.0),
              Center(
                child: agreeAndContinue,
              ),
              SizedBox(height: 80.0),
            ],
          ),
        ),
      ),
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
              child: Center(child: signUpForm),
            ),
            new Positioned( //Place it at the top, and not use the entire screen
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: appBar),
          ], )
    );

  }
}
