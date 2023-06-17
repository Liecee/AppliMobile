import 'package:applimobile/Questions.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Questions> list = [
    Questions(question: "Quel est la capital du Pérou?", reponse: {
      "Arequipa": false,
      "Lima": true,
      "Trujillo": false,
      "Chiclayo": false,
    }), 

    Questions(question: "Quel est la capital du Brésil ?", reponse: {
      "Salvador": false,
      "Rio de Janeiro": false,
      "Brasília": true,
      "São Paulo": false,
    }),

    Questions(question: "Quel est la capital de l'Argentine ?", reponse: {
      "Buenos Aires": true,
      "Córdoba": false,
      "Rosario": false,
      "Mendoza": false,
    }),

    Questions(question: "Quel est la capital de la Colombie ?", reponse: {
      "Bogotá": true,
      "Medellín": false,
      "Cali": false,
      "Barranquilla": false,
    }),

    Questions(question: "Quel est la capital de l'Équateur ?", reponse: {
      "Guayaquil": false,
      "Quito": true,
      "Cuenca": false,
      "Santo Domingo": false,
    }),

    Questions(question: "Quel est la capital du Chili ?", reponse: {
      "Santiago": true,
      "Valparaíso": false,
      "Concepción": false,
      "La Serena": false,
    }),

    Questions(question: "Quel est la capital du Venezuela ?", reponse: {
      "Maracaibo": false,
      "Caracas": true,
      "Valencia": false,
      "Barquisimeto": false,
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 330),
        alignment: Alignment.center,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'QuizzApp',
                style: TextStyle(
                  fontFamily: 'Dacherry',
                  fontSize: 85,
                  color: Colors.white,
                ),
              ),
            ),

            CustomButton(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                child: Text('Capitales',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'alamain1')),
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()   )
                );
              },
            ),
              ),
            

            // Deuxieme bouton
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65),
              child: ElevatedButton(
                onLongPress: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                child: Text('Drapeaux',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'alamain1')),
                onPressed: () {},
              ),
            ),

            // Troisieme bouton

            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65),
              child: ElevatedButton(
                onLongPress: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(20),
                ),
                child: Text('Vehicules',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'alamain1')),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Center(
        child: Text(
          'Choisissez une catégorie : ',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'alamain1',
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  
}
