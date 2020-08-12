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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields),
              title: Text("Edit"),
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text("Record"),
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
        ],
        onTap: (index) {
          setState(() {
            page_index = index;
          });
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed("/");
              break;
            case 1:
              Navigator.of(context).pushNamed("/edit");
              break;
            case 2:
              Navigator.of(context).pushNamed("/record");
              break;
            default:
              print("Error : Wrong index");
          }
        });
  }
}
