import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "what's your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'scpre': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3}
      ],
    },
    {
      "questionText": "what's your favorite food?",
      "answers": [
        {'text': 'Steak', 'score': 10},
        {'text': 'Pilau', 'score': 8},
        {'text': 'Soup', 'score': 5},
        {'text': 'Pizza', 'score': 3},
      ],
    },
  ];

  var _idx = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _idx += 1;
      _totalScore += score;
    });
    print(_idx);
    if (_idx < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _idx < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                idx: _idx)
            : Result(_totalScore),
      ),
    );
  }
}
