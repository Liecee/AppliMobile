import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Première appli')),
      body: Center(
        child: Container(
          child: Row(
            children: [
              const Text('Hello World'),
              const Text('Hello World'),
            ],
          ),
        ),
      ),
    );
  }
}
