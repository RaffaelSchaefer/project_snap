import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String main_account = "https://thispersondoesnotexist.com/image";
  String smurf_account = "https://thiscatdoesnotexist.com/";
  int page_index = 0;

  void UserSwitcher() {
    String backup = main_account;
    this.setState(() {
      main_account = smurf_account;
      smurf_account = backup;
    });
  }

  @override
  Widget build(BuildContext) {}
}
