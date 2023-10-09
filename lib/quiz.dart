import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/home_screen.dart';
import 'package:flutter_quiz_app/questions_screen.dart';

const bgColor = Color.fromARGB(255, 75, 14, 99);

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  State<StatefulWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: activeScreen == 'home-screen' ? HomeScreen(switchScreen) : const QuestionScreen(),
      ),
    );
  }
}
