import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AmazingRow.dart';
import 'entites/pokemon.dart';

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
