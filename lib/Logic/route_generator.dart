import 'package:flutter/material.dart';
import 'package:project_snap/home.dart';
import 'package:project_snap/test.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/test':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => Test(
                    data: args,
                  ));
        } else {
          return _errorRoute();
        }
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
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
