import 'package:applimobile/home.dart';
import 'package:applimobile/Routage.dart';

import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
      routes: {
        Routage.home: (context) => Home(),
      },
    );
  }
}