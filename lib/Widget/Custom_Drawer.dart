import "package:flutter/material.dart";

class Custom_Drawer extends StatefulWidget {
  Custom_Drawer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Custom_Drawer createState() => _Custom_Drawer();
}

class _Custom_Drawer extends State<Custom_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("John@Doe.net"),
            currentAccountPicture: GestureDetector(
              onTap: () => print("this is John Doe"),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://thispersondoesnotexist.com/image"),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        NetworkImage("https://thisartworkdoesnotexist.com/"))),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text("Skripts"),
            trailing: Icon(Icons.text_fields),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text("Capture Mode"),
            trailing: Icon(Icons.camera),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text("Team"),
            trailing: Icon(Icons.people),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            title: Text("Profile"),
            trailing: Icon(Icons.person),
            onTap: () => Navigator.of(context).pop(),
          ),
          Divider(),
          ListTile(
            title: Text("Back"),
            trailing: Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }
}
