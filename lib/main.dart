import 'package:flutter/material.dart';
import 'PreLogin.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';
import 'HomePage.dart';
import 'CreateProfilePage.dart';
import 'ActiveBookings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    PreLoginPage.tag: (context) => PreLoginPage(),
    LoginPage.tag: (context) => LoginPage(),
    SignupPage.tag: (context) => SignupPage(),
    HomePage.tag: (context) => HomePage(),
    CreateProfilePage.tag: (context) => CreateProfilePage(),
    ActiveBookings.tag: (context) => ActiveBookings(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: PreLoginPage(),
      routes: routes,
    );
  }
}
