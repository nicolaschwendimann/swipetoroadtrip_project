import 'package:flutter/material.dart';
import 'package:swipetoroadtrip/Model/trip.dart';
import 'package:swipetoroadtrip/Swipe/swipeFunctionality.dart';
import 'package:swipetoroadtrip/Utility/common.dart';
import 'package:url_launcher/url_launcher.dart';

import '../local-data.dart';

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  List<Trip> favouritedTrips;

  @override
  void initState() {
    super.initState();
    favouritedTrips = LocalData.savedTripsIds
        .map((e) => trip.firstWhere((element) => element.id == e))
        .toList();
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
        title: Text('Deine Favoriten'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: InkWell(
                  onTap: () async {
                    setState(() {
                      LocalData.clearFavourites();
                      favouritedTrips.clear();
                    });
                  },
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: Color.fromRGBO(221, 113, 113, 1),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40,
                    ),
                    child: Text(
                      'Liste löschen',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favouritedTrips.length,
                itemBuilder: (BuildContext context, int index) {
                  Trip trip = favouritedTrips[index];
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ListTile(
                      onTap: () async {
                        String url = trip.mapUrl;
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      leading: Container(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          child: displayImage(
                            trip.url,
                            context,
                          ),
                        ),
                      ),
                      title: Text(
                        trip.areaTag,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: new Color.fromRGBO(221, 113, 113, 1),
                        ),
                        onPressed: () {
                          setState(() {
                            favouritedTrips.remove(trip);
                            LocalData.removeFromFavourites(trip);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
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
              color: new Color.fromRGBO(220, 200, 189, 1),
            ),
          ),
          ListTile(
              title: Text('Kartendeck'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SwipeFunction()));
              }),
        ]),
      ),
    );
  }
}
