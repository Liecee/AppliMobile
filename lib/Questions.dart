import 'package:flutter/material.dart';

class Questions {
  String question;
  Map<String, bool> reponse;

  Questions({String q, Map<String, bool> r = const <String, bool>{}}) {
    question = q;
    reponse = r;
  }
}
