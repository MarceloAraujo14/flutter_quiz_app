import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/quiz-logo.png',
          width: 250, color: const Color.fromARGB(80, 255, 255, 255)),
//
      const SizedBox(height: 50),
//
      const Text(
        "Learn AWS the fun Way!",
        style: TextStyle(color: Color.fromARGB(80, 255, 255, 255)),
      ),
//
      const SizedBox(height: 25),
//
      ElevatedButton.icon(
        onPressed: switchScreen,
        icon: const Icon(Icons.arrow_right_alt),
        style: ElevatedButton.styleFrom(
            backgroundColor: questionBtcolor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        label: const Text(
          "Start Quiz",
          style: TextStyle(color: Colors.white),
        ),
      )
    ]);
  }
}
