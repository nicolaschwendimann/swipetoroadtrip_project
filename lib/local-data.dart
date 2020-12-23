import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Model/trip.dart';

class LocalData {
  static SharedPreferences sharedPreferences;
  static List<String> savedTripsIds = [];

  List<String> get saveListData => savedTripsIds;

  static loadData() async {

    final file = File((await getApplicationDocumentsDirectory()).path + '/data.json');

    try {
      final data = jsonDecode(await file.readAsString());
      // print(data);
      savedTripsIds = (data['tripsList'] as List)?.cast<String>() ?? [];
    } catch (e) {
      print(e);

    }
  }

  static writeData() async {
    final file = File((await getApplicationDocumentsDirectory()).path + '/data.json');

    await file.writeAsString(jsonEncode({
      'tripsList': savedTripsIds,
    }));
    print(await file.readAsString());
  }


  static bool canSaveTrip(Trip trip)  {
    return ! savedTripsIds.contains(trip.id);
  }

  static clearFavourites(){
    savedTripsIds.clear();
    writeData();
  }

  static  saveTrip(Trip trip)  {
   if(canSaveTrip(trip))
     addToFavourites(trip);
   else
     removeFromFavourites(trip);
  }

  static removeFromFavourites(Trip trip) {
    try {
      savedTripsIds.remove(trip.id);
      writeData();
    } catch (e) {
      print(e.toString() + ' Remove');
    }
  }

  static addToFavourites(Trip trip) {
    try {
      savedTripsIds.add(trip.id);
      writeData();
    } catch (e) {
      print(e.toString() + ' Add');
    }
  }


}
