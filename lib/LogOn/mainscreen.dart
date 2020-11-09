import 'package:flutter/material.dart';
import 'package:swipetoroadtrip/Favoriten/favouritespage.dart';
import 'package:swipetoroadtrip/Swipe/secondscreen.dart';

class MainScreen extends StatelessWidget {
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
        title: Text('Welcome'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Center(
        //Container für gesamten Body Content
        child: Column(
          //Column im Container "Center"
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              //Row im Container "Column"
              children: <Widget>[
                Container(
                  width: 400,
                  height: 400,
                  child: Image.asset('assets/titelbild.jpg'),
                ),
              ],
            ),
            // Row für Bild endet hier

            Row(
                //Row im Container "Column"
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      alignment: Alignment.bottomCenter,
                      //width: 400,
                      height: 50,
                      child: Text(
                        'Swipe To Roadtrip \n',
                        style: TextStyle(color: Colors.deepOrange[300]),
                        //textAlign: TextAlign.center,
                      )),
                ]),
            // Row für Text endet hier

            Row(
              //Row im Container "Column"
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    child: Text(
                      'START',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: new Color.fromRGBO(255, 132, 51, 1),
                    // Zur nächsten Seite navigieren
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                  ),
                ),
              ],
            ),
            // Row für Button endet hier
          ],
        ),
      ),
      // Center Container von body: endet hier

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
      //Drawer endet hier
    );
  }
}
