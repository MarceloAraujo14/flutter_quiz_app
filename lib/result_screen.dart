import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/question_result.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.toQuestionScreen, this.answers, {super.key});

  final Function() toQuestionScreen;
  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _resultString(answers),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(216, 255, 255, 255),
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 25),
        //
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: _buildResults(answers),
                ),
              ),
            )
          ],
        ),

        //
        const SizedBox(height: 25),
        //
        ElevatedButton.icon(
          onPressed: () {
            answers.clear();
            toQuestionScreen();
          },
          icon: const Icon(
            Icons.replay_outlined,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 87, 17, 114),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          label: const Text(
            "Restart the Quiz",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

String _resultString(List<String> answers) {
  var corrects = 0;
  var total = answers.length;
  for (var i = 0; i < total; i++) {
    if (questions[i].answers[0] == answers[i]) {
      corrects++;
    }
  }

  if (corrects == total) {
    return "Congratulations! You've score $corrects from $total questions!";
  }

  return "You've score $corrects from $total questions.";
}

Column _buildResults(List<String> answers) {
  var total = answers.length;
  List<QuestionResult> resultList = [];
  for (var i = 0; i < total; i++) {
    resultList.add(QuestionResult(
        questions[i].question, answers[i], questions[i].answers[0], i + 1));
  }
  return Column(
    children: [...resultList],
  );
}
