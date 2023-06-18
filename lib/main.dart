import 'package:applimobile/home.dart';
import 'package:applimobile/Routage.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appli Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Dacherry',
        
      

      ),
      home: Home(),
      routes: {
        Routage.home: (context) => Home(),

      },
    );
  }
}
