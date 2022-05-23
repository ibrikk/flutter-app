import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int idx;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.idx});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          questions[idx]['questionText'] as String,
        ),
        ...(questions[idx]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    ));
  }
}
