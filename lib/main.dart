import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light, //couleur thème light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, //couleur thème dark
      ),
      themeMode: ThemeMode.dark, //thème par défaut
      home: HomePage(),
    );
  }
}
