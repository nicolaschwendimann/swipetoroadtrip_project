import 'package:flutter/material.dart';
import 'package:swipetoroadtrip/local-data.dart';

import 'LogOn/mainscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalData.loadData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(244, 219, 201, 1),
      ),
      home: MainScreen(),
    );
  }
}
