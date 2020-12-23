import 'package:flutter/material.dart';
import 'package:swipetoroadtrip/Swipe/swipeFunctionality.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        //Row im Container "Column"
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/titelbild.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Container(
                alignment: Alignment.center,
                // width: MediaQuery.of(context).size.width/2,
                margin: EdgeInsets.only(
                  bottom: 0,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SwipeFunction(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: Color.fromRGBO(220, 200, 189, 1),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 40,
                    ),
                    child: Text(
                      'LOS GEHTS',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
                // RaisedButton(
                //
                //   child: Text(
                //     'START',
                //     style: TextStyle(
                //       color: Colors.white,
                //     ),
                //   ),
                //   color: new Color.fromRGBO(255, 132, 51, 1),
                //   // Zur nächsten Seite navigieren
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => SwipeFunction(),
                //       ),
                //     );
                //   },
                // ),
                ),
          )
        ],
      ),
      // Center(
      //   //Container für gesamten Body Content
      //   child: Column(
      //     //Column im Container "Center"
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     //crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Stack(
      //         //Row im Container "Column"
      //         children: <Widget>[
      //           Container(
      //             width: MediaQuery.of(context).size.width,
      //             height: MediaQuery.of(context).size.height,
      //             child: Image.asset('assets/titelbild.jpg',fit: BoxFit.cover,),
      //           ),
      //           Positioned(
      //             child: RaisedButton(
      //               child: Text(
      //                 'START',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                 ),
      //               ),
      //               color: new Color.fromRGBO(255, 132, 51, 1),
      //               // Zur nächsten Seite navigieren
      //               onPressed: () {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => SwipeFunction(),
      //                   ),
      //                 );
      //               },
      //             ),
      //           )
      //         ],
      //       ),
      //       // Row für Bild endet hier
      //
      //       // Row(
      //       //     //Row im Container "Column"
      //       //     mainAxisAlignment: MainAxisAlignment.center,
      //       //     children: <Widget>[
      //       //       Container(
      //       //           alignment: Alignment.bottomCenter,
      //       //           //width: 400,
      //       //           height: 50,
      //       //           child: Text(
      //       //             'Swipe To Roadtrip \n',
      //       //             style: TextStyle(color: Colors.deepOrange[300]),
      //       //             //textAlign: TextAlign.center,
      //       //           )),
      //       //     ]),
      //       // Row für Text endet hier
      //
      //       // Row(
      //       //   //Row im Container "Column"
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //       //   children: <Widget>[
      //       //     Container(
      //       //       alignment: Alignment.bottomCenter,
      //       //       child: RaisedButton(
      //       //         child: Text(
      //       //           'START',
      //       //           style: TextStyle(
      //       //             color: Colors.white,
      //       //           ),
      //       //         ),
      //       //         color: new Color.fromRGBO(255, 132, 51, 1),
      //       //         // Zur nächsten Seite navigieren
      //       //         onPressed: () {
      //       //           Navigator.push(
      //       //             context,
      //       //             MaterialPageRoute(
      //       //               builder: (context) => SwipeFunction(),
      //       //             ),
      //       //           );
      //       //         },
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //       // Row für Button endet hier
      //     ],
      //   ),
      // ),
      // Center Container von body: endet hier

      //Drawer beginnt hier
      // drawer: Drawer(
      //   child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      //     DrawerHeader(
      //       child: Text(
      //         'Menu',
      //         style: TextStyle(
      //           color: Colors.white,
      //         ),
      //       ),
      //       decoration: BoxDecoration(
      //         color: new Color.fromRGBO(255, 132, 51, 1),
      //       ),
      //     ),
      //     ListTile(
      //         title: Text('My favorites'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => FavouritesPage()));
      //         }),
      //     ListTile(
      //         title: Text('Welcome Page'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => MainScreen()));
      //         }),
      //     ListTile(
      //         title: Text('Get Started'),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => SecondScreen()));
      //         }),
      //   ]),
      // ),
      //Drawer endet hier
    );
  }
}
