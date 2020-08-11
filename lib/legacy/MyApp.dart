import "package:flutter/material.dart";

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Lens", style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("John@Doe.net"),
              currentAccountPicture: GestureDetector(
                onTap: () => print("this is John Doe"),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(main_account),
                ),
              ),
              otherAccountsPictures: [
                GestureDetector(
                  onTap: () => UserSwitcher(),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(smurf_account),
                  ),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://thisartworkdoesnotexist.com/"))),
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
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(20.0),
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Hello Stranger",
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "This App is in WIP Mode",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 50.0),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          }),
    );
  }
}
