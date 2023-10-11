import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';

const bgColor = Color.fromARGB(255, 214, 123, 38);
const questionBtcolor = Color.fromARGB(255, 33, 50, 145);

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: bgColor,
      body: QuizWidget(),
    ),
  ));
}
