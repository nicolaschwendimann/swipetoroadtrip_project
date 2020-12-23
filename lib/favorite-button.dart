import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:swipetoroadtrip/Swipe/swipeFunctionality.dart';

import 'Model/trip.dart';
import 'local-data.dart';

class FavoriteButton extends StatefulWidget {
  final Trip trip;
  final List<Trip> tripList;
  final Function callback;
  final CardController controller;

  FavoriteButton({this.trip, this.callback, this.controller, this.tripList});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    var canSave = LocalData.canSaveTrip(widget.trip);
    return SizedBox(
      width: 230,
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Text(
                canSave ? "zu den Favoriten" : "Entfernen",
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
            IconButton(
              icon: Icon(
                canSave ? Icons.favorite_border : Icons.favorite,
                color: Colors.red,
              ),
              onPressed: null,
            ),
          ],
        ),
        onPressed: () {
          widget.controller.triggerRight();
          LocalData.saveTrip(widget.trip);
          if (widget.tripList.last == widget.trip) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SwipeFunction()));
          }
        },
      ),
    );
  }
}
