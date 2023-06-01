import 'package:applimobile/pokemon.dart';
import 'package:flutter/material.dart';

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

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mycontroller;

  @override
  void initState() {
    mycontroller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  final pokedex = <Pokemon>[
    // <== liste finale, contenu constant
    Pokemon('Artikodin', Icons.ac_unit),
    Pokemon('Sulfura', Icons.wb_sunny),
    Pokemon('Electhor', Icons.cloud),
    Pokemon('Mewtwo', Icons.remove_red_eye),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Première appli'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: mycontroller,
                  decoration: InputDecoration(
                    labelText: 'Ecrivez un nom',
                  ),
                ),
              ),
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    final String nameToAdd = mycontroller.text;
                    // ajouter des conditions le mot fasse au minumum 3 lettres
                    if (nameToAdd.length < 3) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Le nom doit contenir au minimum 3 lettres'),
                        ),
                      );
                      return;
                    }

                    setState(() {
                      pokedex.add(
                        // <== ajoutez un nouveau pokemon au début de la liste
                        Pokemon(nameToAdd, Icons.add),
                      );
                      mycontroller.clear();
                    });
                  })
            ],
          ),
          for (final Pokemon item in pokedex)
            TheAmazingRow(
              icon: item.icon,
              label: item.name,
              onDelete: onPokemonDelete,
            ),
        ],
      )),
    );
  }

  void onPokemonDelete(String name) {
    setState(() {
      pokedex.removeWhere((element) => element.name == name);
    });
  }
}

class TheAmazingRow extends StatelessWidget {
  TheAmazingRow({
    this.icon,
    this.label,
    this.onDelete,
  });
  final IconData icon;
  final String label;
  final Function(String) onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.3),
// <cherchez comment appliquer un border radius >
        borderRadius: BorderRadius.circular(10), //border radius de 16 pixelsr
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          const SizedBox(width: 16),
          Expanded(child: Text(label)),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDelete(label),
          )
        ],
      ),
    );
  }
}
