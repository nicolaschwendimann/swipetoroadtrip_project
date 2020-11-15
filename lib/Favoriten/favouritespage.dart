import 'package:flutter/material.dart';
import 'package:swipetoroadtrip/LogOn/mainscreen.dart';
import 'package:swipetoroadtrip/Swipe/secondscreen.dart';

class FavouritesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
        title: Text('Deine Favoriten'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),

      body: Container(
        alignment: Alignment.bottomCenter,
        child: RaisedButton(
          child: Text(
            'ZURÜCKSETZEN',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color.fromRGBO(255, 132, 51, 1),
          // Zur nächsten Seite navigieren
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
        ),
      ),

      //Drawer beginnt hier
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: new Color.fromRGBO(255, 132, 51, 1),
            ),
          ),
          ListTile(
              title: Text('Meine Favoriten'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouritesPage()));
              }),
          ListTile(
              title: Text('Radius ändern'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              }),
          ListTile(
              title: Text('Second Screen'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              }),
        ]),
      ),
      //Drawer endet hier,
    );
  }
}
