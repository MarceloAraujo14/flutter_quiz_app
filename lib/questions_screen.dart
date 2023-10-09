import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text(
          "Text Question?",
          style:
              TextStyle(color: Color.fromARGB(80, 255, 255, 255), fontSize: 20),
        ),
        const SizedBox(height: 50),
        buildQuestionButton(true, "Right Answer"),
        buildQuestionButton(false, "Wrong Answer"),
        buildQuestionButton(false, "Wrong Answer"),
        buildQuestionButton(false, "Wrong Answer"),
      ]),
    );
  }
}

ElevatedButton buildQuestionButton(bool isRight, String text) {
  return ElevatedButton(
    onPressed: () {
      print(isRight);
    },
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(300, 30),
      backgroundColor: const Color.fromARGB(255, 30, 13, 63),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(199, 255, 255, 255),
      ),
    ),
  );
}
