import 'package:flutter/material.dart';
import 'package:scholar/screens/home.dart';
import 'package:scholar/screens/login.dart';
import 'package:scholar/screens/register.dart';
import 'package:scholar/screens/send_message.dart';

Route geneateRoute(RouteSettings settings) {
  //check named route and return page
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<Widget>(builder: (context) => Home());

    case '/login':
      return MaterialPageRoute<Widget>(builder: (context) => Login());

    case '/register':
      return MaterialPageRoute<Widget>(builder: (context) => Register());

    case '/send-message':
      return MaterialPageRoute<Widget>(builder: (context) => SendMessage());

    default:
      return MaterialPageRoute<Widget>(builder: (context) => Home());
  }
}
