/* Requirements for this page called swipeFunctionality.dart

- When pressing the button "add to favourites", the heart icon should change into a filled heart icon.
- furthermore, the active map content roadtripAreaTag, roadtripMapURL from RoadtripCard() shall be entered into a list[],
  which is stored in the file favouritespage.dart.
- as soon as the list[] contains 3 elements, a popup is displayed informing the user "No more than 3 favourites allowed".   
- It should be possible to navigate through all pages with a sidebar navigation.
- URLs for map content and Instagram images shall be outsourced to a separate file to ensure easier management.

*/

import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swipetoroadtrip/Favoriten/favouritespage.dart';
import 'package:swipetoroadtrip/LogOn/mainscreen.dart';
import 'package:swipetoroadtrip/Model/trip.dart';
import 'package:swipetoroadtrip/Utility/common.dart';
import 'package:swipetoroadtrip/favorite-button.dart';
import 'package:url_launcher/url_launcher.dart';

class SwipeFunction extends StatefulWidget {
  @override
  _SwipeFunctionState createState() => _SwipeFunctionState();
}

class _SwipeFunctionState extends State<SwipeFunction> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  CardController controller = CardController();

  @override
  void initState() {
    super.initState();
  }

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color: new Color.fromRGBO(220, 200, 189, 1),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouritesPage()));
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: trip.length,
                  stackNum: 3,
                  swipeEdge: 4.0,
                  cardController: controller,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: 500,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: 450,
                  cardBuilder: (context, index) {
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
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          gradient: new LinearGradient(
                            colors: [
                              trip[index].above,
                              trip[index].bottom,
                            ],
                            begin: Alignment.centerRight,
                            end: new Alignment(-1.0, -1.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 230,
                              width: 230,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  100,
                                ),
                                child: displayImage(trip[index].url, context,),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: Text(
                                trip[index].areaTag,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0
                            ),
                            IconButton(
                              padding: new EdgeInsets.all(30.0),
                              icon: Icon(
                                FontAwesomeIcons.mapMarkedAlt,
                                color: Colors.black,
                              ),
                              onPressed: () async {
                                String url = trip[index].mapUrl;
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                            FavoriteButton(
                              controller: controller,
                              trip: trip[index],
                              tripList: trip,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    if (trip.last == trip[index]) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwipeFunction()));
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
