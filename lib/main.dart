import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Snap',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String MainAccount = "https://thispersondoesnotexist.com/image";
  String SmurfAccount = "https://thiscatdoesnotexist.com/";
  int page_index = 0;

  void UserSwitcher() {
    String Backup = MainAccount;
    this.setState(() {
      MainAccount = SmurfAccount;
      SmurfAccount = Backup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Project Lens",
            style: new TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: new Text("John Doe"),
              accountEmail: new Text("John@Doe.net"),
              currentAccountPicture: new GestureDetector(
                onTap: () => print("this is John Doe"),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(MainAccount),
                ),
              ),
              otherAccountsPictures: [
                new GestureDetector(
                  onTap: () => UserSwitcher(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(SmurfAccount),
                  ),
                )
              ],
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: new NetworkImage(
                          "https://thisartworkdoesnotexist.com/"))),
            ),
            new ListTile(
              title: new Text("Home"),
              trailing: new Icon(Icons.home),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              title: new Text("Skripts"),
              trailing: new Icon(Icons.text_fields),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              title: new Text("Capture Mode"),
              trailing: new Icon(Icons.camera),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              title: new Text("Team"),
              trailing: new Icon(Icons.people),
              onTap: () => Navigator.of(context).pop(),
            ),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.person),
              onTap: () => Navigator.of(context).pop(),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Back"),
              trailing: new Icon(Icons.arrow_back),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: Container(
        height: 200,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(20.0),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                title: new Text(
                  "Hello Stranger",
                  style: new TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
              ListTile(
                title: new Text(
                  "This App is in WIP Mode",
                  style: new TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: new BottomNavigationBar(
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
              switch (index) {
                case 0:
                  break;
                case 1:
                  break;
                case 2:
                  break;
                case 3:
                  break;
                default:
                  break;
              }
            });
          }),
    );
  }
}
