import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_snap/Widget/Custom_AppBar.dart';
import 'package:project_snap/Widget/Custom_BottomNav.dart';
import 'package:project_snap/Widget/Custom_Drawer.dart';
import 'package:project_snap/Widget/cards.dart';

class Edit extends StatefulWidget {
  Edit({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
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
        child: ListView(
          children: [
            SimpleCard(),
            SimpleCard(),
            SimpleCard(),
            SimpleCard(),
          ],
        ),
      ),
      bottomNavigationBar: Custom_BotNav(),
    );
  }
}
