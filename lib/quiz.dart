import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/result_screen.dart';
import 'package:flutter_quiz_app/home_screen.dart';
import 'package:flutter_quiz_app/main.dart';
import 'package:flutter_quiz_app/questions_screen.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  State<StatefulWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  List<String> answers = [];

  var activeScreen = 'home-screen';

  void toQuestionScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectAnswer(String answer) {
    answers.add(answer);

    if (questions.length == answers.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: bgColor,
      body: switch (activeScreen) {
        'home-screen' => HomeScreen(toQuestionScreen),
        'questions-screen' => QuestionScreen(selectAnswer),
        'result-screen' => ResultScreen(toQuestionScreen, answers),
        _ => HomeScreen(toQuestionScreen)
      },
    ));
  }
}
