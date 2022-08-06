import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        throw ('this route name does not exits');
    }
  }
}

class AppScreens {
  static const homeScreen = "/homeScreen";
}
