import 'package:flutter/material.dart';
import 'package:project_snap/Record.dart';
import 'package:project_snap/home.dart';
import 'package:project_snap/Edit.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/edit':
        return MaterialPageRoute(builder: (_) => Edit());
      case '/record':
        return MaterialPageRoute(builder: (_) => Record());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    print("Error 404: Path not Found");
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Container(
          color: Colors.red,
          child: Text(
            "ERROR",
            style: TextStyle(fontSize: 40, color: Colors.yellow),
          ),
        ),
      );
    });
  }
}
