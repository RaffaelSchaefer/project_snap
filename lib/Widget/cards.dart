import "package:flutter/material.dart";

class SimpleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Lore Ipsum",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    "dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PreviewCard extends StatefulWidget {
  PreviewCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PreviewCard createState() => _PreviewCard();
}

class _PreviewCard extends State<PreviewCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.text_fields),
      title: Text("Lore Ipsum"),
      subtitle: Text("dolor sit amet,"),
      trailing: Icon(Icons.edit),
      isThreeLine: true,
    );
  }
}

class ComplexCard extends StatefulWidget {
  ComplexCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ComplexCard createState() => _ComplexCard();
}

class _ComplexCard extends State<ComplexCard> {
  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Lore Ipsum",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    "dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  ),
                  Divider(),
                  PreviewCard(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
