import 'package:flutter/material.dart';

class Question {
  String question;
  Map<String, bool>? reponses; // Ajout du '?' pour rendre les réponses optionnelles

  Question({required this.question, this.reponses});
}

class Home extends StatelessWidget {
  final List<Question> listeQuestionsCapitales = [
     Question(
      question: "Quelle est la capitale du Pérou ?",
      reponses: {
        "Arequipa": false,
        "Lima": true,
        "Trujillo": false,
        "Chiclayo": false,
      },
    ),
    Question(
      question: "Quelle est la capitale du Brésil ?",
      reponses: {
        "Salvador": false,
        "Rio de Janeiro": false,
        "Brasília": true,
        "São Paulo": false,
      },
    ),
    Question(
      question: "Quelle est la capitale de l'Argentine ?",
      reponses: {
        "Buenos Aires": true,
        "Córdoba": false,
        "Rosario": false,
        "Mendoza": false,
      },
    ),
    Question(
      question: "Quelle est la capitale de la Colombie ?",
      reponses: {
        "Bogotá": true,
        "Medellín": false,
        "Cali": false,
        "Barranquilla": false,
      },
    ),
    Question(
      question: "Quelle est la capitale de l'Équateur ?",
      reponses: {
        "Guayaquil": false,
        "Quito": true,
        "Cuenca": false,
        "Santo Domingo": false,
      },
    ),
    Question(
      question: "Quelle est la capitale du Chili ?",
      reponses: {
        "Santiago": true,
        "Valparaíso": false,
        "Concepción": false,
        "La Serena": false,
      },
    ),
    Question(
      question: "Quelle est la capitale du Venezuela ?",
      reponses: {
        "Maracaibo": false,
        "Caracas": true,
        "Valencia": false,
        "Barquisimeto": false,
      },
    ),
  ];
  

  final List<Question> listeQuestionsVehicules = [
    Question(
      question: "Quelle est la voiture la plus vendue au monde ?",
      reponses: {
        "Toyota Corolla": true,
        "Ford F-Series": false,
        "Toyota RAV4": false,
        "Honda Civic": false,
      },
    ),
    Question(
      question: "Quelle est la marque de voiture la plus ancienne au monde ?",
      reponses: {
        "Ford": false,
        "Mercedes-Benz": false,
        "Peugeot": false,
        "Fiat": true,
      },
    ),
    Question(
      question: "Quelle est la voiture la plus rapide du monde ?",
      reponses: {
        "Bugatti Veyron Super Sport": true,
        "Koenigsegg Agera RS": false,
        "Hennessey Venom GT": false,
        "SSC Tuatara": false,
      },
    ),
    Question(
      question: "Quelle est la marque de voiture la plus vendue en Europe ?",
      reponses: {
        "Volkswagen": true,
        "Renault": false,
        "Ford": false,
        "Toyota": false,
      },
    ),
    Question(
      question: "Quelle est la voiture électrique la plus vendue au monde ?",
      reponses: {
        "Tesla Model 3": true,
        "Nissan Leaf": false,
        "Chevrolet Bolt EV": false,
        "BMW i3": false,
      },
    ),
    Question(
      question: "Quelle est la marque de voiture la plus populaire en Inde ?",
      reponses: {
        "Maruti Suzuki": true,
        "Hyundai": false,
        "Tata Motors": false,
        "Mahindra": false,
      },
    ),
    Question(
      question: "Quelle est la marque de voiture la plus vendue en Chine ?",
      reponses: {
        "Volkswagen": true,
        "Toyota": false,
        "Honda": false,
        "Geely": false,
      },
    ),
  ];

  final List<Question> listeQuestionsArtsModernes = [
    Question(
      question: "Qui est l'artiste français connu pour ses œuvres cubistes ?",
      reponses: {
        "Pablo Picasso": true,
        "Salvador Dalí": false,
        "Henri Matisse": false,
        "Paul Cézanne": false,
      },
    ),
    Question(
      question: "Quelle est l'œuvre célèbre de Leonardo da Vinci représentant une femme souriante ?",
      reponses: {
        "La Joconde": true,
        "La Cène": false,
        "La Vierge aux rochers": false,
        "L'Homme de Vitruve": false,
      },
    ),
    Question(
      question: "Quel est le nom de l'artiste français connu pour ses peintures impressionnistes ?",
      reponses: {
        "Claude Monet": true,
        "Edgar Degas": false,
        "Paul Cézanne": false,
        "Auguste Renoir": false,
      },
    ),
    Question(
      question: "Quel est le nom de l'artiste espagnol connu pour ses peintures surréalistes ?",
      reponses: {
        "Salvador Dalí": true,
        "Pablo Picasso": false,
        "Joan Miró": false,
        "Francisco Goya": false,
      },
    ),
    Question(
      question: "Quel est le nom de l'artiste français connu pour ses peintures postimpressionnistes ?",
      reponses: {
        "Paul Cézanne": true,
        "Henri Matisse": false,
        "Paul Gauguin": false,
        "Georges Seurat": false,
      },
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuizzApp'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choisissez une catégorie :',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(listeQuestionsCapitales),
                  ),
                );
              },
              child: Text(
                'Capitales',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(listeQuestionsVehicules),
                  ),
                );
              },
              child: Text(
                'Véhicules',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(listeQuestionsArtsModernes, hasTextInput: true),
                  ),
                );
              },
              child: Text(
                'Arts modernes',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final List<Question> questions;
  final bool hasTextInput; 

  QuizScreen(this.questions, {this.hasTextInput = false});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  TextEditingController textEditingController = TextEditingController(); 

  void answerQuestion(bool isCorrect, String? userAnswer) {
    setState(() {
      if (isCorrect) {
        score++;
      }
      if (currentQuestionIndex < widget.questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Quiz Finished'),
              content: Text('Your score: $score / ${widget.questions.length}'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = widget.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              currentQuestion.question,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            if (widget.hasTextInput) 
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Entrer votre réponse',
                  border: OutlineInputBorder(),
                ),
              ),
            if (!widget.hasTextInput)
              ...currentQuestion.reponses!.entries.map(
                (entry) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => answerQuestion(entry.value, null),
                  child: Text(
                    entry.key,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            SizedBox(height: 16),
            if (widget.hasTextInput) 
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  String? userAnswer = textEditingController.text.trim();
                  bool isCorrect = currentQuestion.reponses!.containsKey(userAnswer);
                  answerQuestion(isCorrect, userAnswer);
                  textEditingController.clear();
                },
                child: Text(
                  'Valider',
                  style: TextStyle(fontSize: 20),
                ),
              ),
          ],
        ),
      ),
    );
  }
}




