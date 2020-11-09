import 'package:flutter/material.dart';
import 'LogOn/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 132, 51, 1),
      ),
      home: MainScreen(),
      
    );
  }
}

