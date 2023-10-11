import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton(this.next, this.text, {super.key});

  final Function() next;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(5),
      child: ElevatedButton(
        onPressed: next,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(300, 30),
          backgroundColor: questionBtcolor,
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
      ),
    );
  }
}
