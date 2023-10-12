import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/anwser_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.selectAnswer, {super.key});

  final Function(String answer) selectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  
  var questionN = 0;

  void nextQuestion(String answer) {
    setState(() {
      widget.selectAnswer(answer);
      questionN++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          questions[questionN].question,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color.fromARGB(80, 255, 255, 255), fontSize: 20),
        ),
        //
        const SizedBox(height: 20),
        //
        ...questions[questionN]
            .shuffler
            .map((answer) => AnswerButton(() {
                  nextQuestion(answer);
                }, answer))
      ],
    );
  }
}
