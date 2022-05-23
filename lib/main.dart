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
      "answers": ['Black, Red, Green, White'],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ['Rabbit', 'Snake', 'Elephant'],
    },
    {
      "questionText": "what's your favorite food?",
      "answers": ['Steak', 'Pilau', 'Soup', 'Pizza'],
    },
  ];

  var _idx = 0;
  void _answerQuestion() {
    setState(() {
      _idx += 1;
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
            : Result(),
      ),
    );
  }
}
