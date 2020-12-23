/* Requirements for this page called secondscreen.dart

Widget applyButton()
  -  By pressing on Button "add to favourites" 
     the heart-icon should turn into a filled-heart-icon in color red
  -  also the active card content roadtripAreaTag, roadtripMapURL from 
     RoadtripCard() should be added into a list[] stored into the favouritespage.dart file
  -  as soon the list[] contains 3 elements a popup will display and inform the user "Not more than 3 favourites allowed"   
Drawer:
  -  the drawer() works well at the moment.
  -  this function enables the opportunity to navigate through each page.
*/
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:swipetoroadtrip/Favoriten/favouritespage.dart';
import 'package:swipetoroadtrip/LogOn/mainscreen.dart';

class SecondScreen extends StatelessWidget {
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
        title: Text('Swipe to Roadtrip!'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),

      // Body beginnt hier
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                MyCards(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: applyButton(),
            ),
          )
        ],
      ),
      // Body endet hier

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
              title: Text('Start'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              }),
          ListTile(
              title: Text('Meine Favoriten'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouritesPage()));
              }),
          ListTile(
              title: Text('Start'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              }),
        ]),
      ),
      //Drawer endet hier
    );
  }
}

Widget applyButton() {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(100.0),
    ),
    child: RaisedButton(
      color: Color.fromRGBO(255, 132, 51, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "add to favourites",
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.heart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      onPressed: () {},
    ),
  );
}

class MyCards extends StatefulWidget {
  final Function onCardChanged;

  MyCards({this.onCardChanged});

  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> with SingleTickerProviderStateMixin {
  //Cardset Input startet hier
  var cards = [
    RoadtripCard(
        index: 0,
        color1: Color.fromRGBO(255, 224, 140, 1),
        color2: Color.fromRGBO(255, 184, 130, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/123589242_426718308723180_7469843103303214206_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=u-4h-t0qZpkAX_7wBBl&_nc_tp=24&oh=6075bc35710132bde896302727fc43e8&oe=5FD1154C",
        roadtripAreaTag: "Lagh da Saoseo",
        roadtripMapURL: "https://goo.gl/maps/kF7ecbjdiVfnmDZAA"),
    RoadtripCard(
        index: 1,
        color1: Color.fromRGBO(255, 224, 140, 1),
        color2: Color.fromRGBO(255, 184, 130, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c240.0.960.960a/s640x640/122473796_354069288998075_3861816978507622819_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=2Ufp2ShuiVMAX9kxeiU&_nc_tp=24&oh=21063d3cfa06905d6620b62a94916f1e&oe=5FD2998A",
        roadtripAreaTag: "Vierwaldstättersee",
        roadtripMapURL: "https://goo.gl/maps/eMs1VzhnaxvCs44g7"),
    RoadtripCard(
        index: 2,
        color1: Color.fromRGBO(255, 224, 140, 1),
        color2: Color.fromRGBO(255, 184, 130, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/122016155_190247995898885_276649956325537352_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=MVs5Nd0x12kAX-2RLy6&_nc_tp=24&oh=6664b5c89bda440e2c22573fefe211cb&oe=5FD0122B",
        roadtripAreaTag: "Furkapass",
        roadtripMapURL: "https://goo.gl/maps/4LJ79MpRgBodmEqV8",),
    RoadtripCard(
        index: 3,
        color1: Color.fromRGBO(255, 224, 140, 1),
        color2: Color.fromRGBO(255, 184, 130, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/120749440_157355249372510_7343777022056864098_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=Cs9QjxJvuAcAX8Gxakt&_nc_tp=24&oh=e7c05f0ed8a09f8eb3c2674435e17193&oe=5FD1CB70",
        roadtripAreaTag: "Creux de Van",
        roadtripMapURL: "https://goo.gl/maps/erWwLpTmVJgLx2Wh6"),
    RoadtripCard(
        index: 4,
        color1: Color.fromRGBO(255, 120, 140, 1),
        color2: Color.fromRGBO(255, 80, 100, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/120336318_438318327143203_8278855611934284025_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=y-hKHM9qolYAX-rSw5C&_nc_tp=24&oh=b0128cc1141b55051790559327f4d695&oe=5FD02366",
        roadtripAreaTag: "Iseltwald",
        roadtripMapURL: "https://goo.gl/maps/WdNLsxoGnzW8dyRw6"),
    RoadtripCard(
        index: 5,
        color1: Color.fromRGBO(255, 100, 140, 1),
        color2: Color.fromRGBO(255, 80, 130, 1),
        roadtripImage:
            "https://instagram.fzrh2-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/c0.180.1440.1440a/s640x640/123546093_1826428787514910_7885130792243046563_n.jpg?_nc_ht=instagram.fzrh2-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=mRSK-lRTrv4AX-wx1gy&_nc_tp=24&oh=f67d81942e6acb90c410f498297aa307&oe=5FCFDF9E",
        roadtripAreaTag: "Lauterbrunnen",
        roadtripMapURL: "https://goo.gl/maps/buqTNGpScskCHqvPA"),
  ];

  //Cardset Input endet hier

  //Swipe Animationseinstellung startet hier
  int currentIndex;
  AnimationController controller;
  CurvedAnimation curvedAnimation;
  Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
    curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);

    animation = Tween(begin: Offset(0.0, 0.05), end: Offset(0.0, 0.0))
        .animate(curvedAnimation);
  }
  //Swipe Animationseinstellungen enden hier

  // Card Deck Build Funktion startet hier
  @override
  Widget build(BuildContext context) {
    return Stack(
        overflow: Overflow.visible,
        children: cards.reversed.map((card) {
          if (cards.indexOf(card) <= 5) {
            return GestureDetector(
              onHorizontalDragEnd: roadtripDrag,
              child: FractionalTranslation(
                translation: stackedCard(card),
                child: card,
              ),
            );
          } else {
            return Container();
          }
        }).toList());
  }

  Offset stackedCard(RoadtripCard card) {
    int diff = card.index - currentIndex;
    if (card.index == currentIndex + 1) {
      return animation.value;
    } else if (diff > 0 && diff <= 5) {
      return Offset(0.0, 0.05 * diff);
    } else {
      return Offset(0.0, 0.0);
    }
  }

  void roadtripDrag(DragEndDetails details) {
    controller.reverse().whenComplete(() {
      setState(() {
        controller.reset();
        RoadtripCard removedCard = cards.removeAt(0);
        cards.add(removedCard);
        currentIndex = cards[0].index;
      });
    });
  }
}
// Card Deck Build Funktion endet hier

//RoadtripCard Content Container beginnt hier
class RoadtripCard extends StatelessWidget {
  final int index;
  final Color color1, color2;
  final String roadtripImage, roadtripAreaTag, roadtripMapURL;

  RoadtripCard(
      {this.index,
      this.color1,
      this.color2,
      this.roadtripImage,
      this.roadtripAreaTag,
      this.roadtripMapURL});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.circular(50.0),
        bottomLeft: Radius.circular(50.0),
        bottomRight: Radius.circular(50.0),
      ),
      child: Container(
          width: 300.0,
          height: 400.0,
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                color1,
                color2,
              ],
              begin: Alignment.centerRight,
              end: new Alignment(-1.0, -1.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Container(
                child: CircleAvatar(
                  backgroundColor: color1,
                  backgroundImage: NetworkImage(roadtripImage),
                  radius: 120.0,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                  child: Text(roadtripAreaTag,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0))),
              SizedBox(height: 20.0),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.mapMarkedAlt,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    //var res = await canLaunch(roadtripMapURL);
                    //print(roadtripMapURL);
                    //print(res);
                    if (await canLaunch(roadtripMapURL)) {
                      await launch(roadtripMapURL);
                    } else {
                      throw 'Could not launch $roadtripMapURL';
                    }
                  }),
            ],
          )),
    );
  }
}

//RoadtripCard Content Container endet hier
