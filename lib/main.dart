import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _idx = 0;
  void _answerQuestion() {
    setState(() {
      _idx += 1;
    });
    print(_idx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_idx]['questionText'] as String,
            ),
            ...(questions[_idx]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
