import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_snap/Widget/Custom_BottomNav.dart';

class Record extends StatefulWidget {
  Record({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: PreferredSize(
      //child: Custom_AppBar(), preferredSize: Size.fromHeight(50)),
      //drawer: Custom_Drawer(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.orange, Colors.red])),
      ),
      bottomNavigationBar: Custom_BotNav(),
    );
  }
}
