import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(
      this.question, this.answer, this.rightAnswer, this.questionN,
      {super.key});

  final String answer;
  final String rightAnswer;
  final int questionN;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: answer == rightAnswer
                ? const Color.fromARGB(180, 145, 248, 209)
                : const Color.fromARGB(100, 44, 44, 44),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            questionN.toString(),
            style: const TextStyle(color: bgColor),
          ),
        ),
        //
        const SizedBox(width: 10),
        //
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: const TextStyle(
                    color: Color.fromARGB(180, 255, 255, 255), fontSize: 16),
              ),
              //
              const SizedBox(height: 10),
              //
              Text(
                rightAnswer,
                style:
                    const TextStyle(color: Color.fromARGB(180, 255, 255, 255)),
              ),
              //
              const SizedBox(height: 5),
              Text(
                answer,
                style: TextStyle(
                  color: answer == rightAnswer
                      ? const Color.fromARGB(180, 145, 248, 208)
                      : const Color.fromARGB(180, 44, 44, 44),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        )
      ],
    );
  }
}
