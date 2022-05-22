import 'package:flutter/material.dart';
import 'question.dart';

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
            Text(
              questions[_idx],
            ),
            ElevatedButton(
              child: Question(
                questions[_idx],
              ),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Question(
                questions[_idx],
              ),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Question(
                questions[_idx],
              ),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
