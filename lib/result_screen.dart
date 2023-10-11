import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.toQuestionScreen, this.answers, {super.key});

  final Function() toQuestionScreen;
  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            resultString(answers),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 25),
          //

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
      ),
    );
  }
}

String resultString(List<String> answers) {
  var corrects = 0;
  var total = answers.length;
  for (var i = 0; i < answers.length; i++) {
    if (questions[i].answers[0] == answers[i]) {
      corrects++;
    }
  }

  if (corrects == total) {
    return "Congratulations! You've score $corrects from $total questions!";
  }

  return "You've score $corrects from $total questions.";
}
