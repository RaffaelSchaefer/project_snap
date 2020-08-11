import "package:flutter/material.dart";

class Custom_BotNav extends StatefulWidget {
  Custom_BotNav({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Custom_BotNav createState() => _Custom_BotNav();
}

class _Custom_BotNav extends State<Custom_BotNav> {
  int page_index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: page_index,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields),
              title: Text("Skripts"),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text("Caputure Mode"),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text("Team"),
              backgroundColor: Colors.orange),
        ],
        onTap: (index) {
          setState(() {
            page_index = index;
          });
        });
  }
}
