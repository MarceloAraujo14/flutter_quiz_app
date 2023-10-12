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
  final List<String> _answers = [];

  var activeScreen = 'home-screen';

  void toQuestionScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void selectAnswer(String answer) {
    _answers.add(answer);

    if (questions.length == _answers.length) {
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
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: switch (activeScreen) {
              'home-screen' => HomeScreen(toQuestionScreen),
              'questions-screen' => QuestionScreen(selectAnswer),
              'result-screen' => ResultScreen(toQuestionScreen, _answers),
              _ => HomeScreen(toQuestionScreen)
            },
          ),
        ),
      ),
    );
  }
}
