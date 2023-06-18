import '../main.dart';

class Questions {
  String question;
  Map<String, bool> reponse;

  Questions({required this.question, required this.reponse});

  bool checkAnswer(String selectedAnswer) {
    return reponse[selectedAnswer] ?? false;
  }
}