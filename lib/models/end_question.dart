import 'package:flutter/material.dart';

class EndQuestion extends StatelessWidget {
  const EndQuestion(this.answer, this.rightAnswer, {super.key});

  final String answer;
  final String rightAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(answer, style: TextStyle(color: const Color.fromARGB(120, 255, 255, 255)),), 
        const SizedBox(height: 5,), 
        Text(rightAnswer, style: TextStyle(color: const Color.fromARGB(120, 255, 255, 255)),),
        const SizedBox(height: 10,)],
    );
  }
}
