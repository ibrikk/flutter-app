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
  void answerQuestion() {
    setState(() {
      _idx += 1;
    });
    print(_idx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favorite color?",
      "What's your favourite animal?",
      "What's your favourite food?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_idx],
            ),
            ElevatedButton(
              child: Answer(),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Answer(),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Answer(),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
