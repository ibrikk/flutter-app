import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.black),
        child: Text(
          'Answer 1',
        ),
        onPressed: null,
      ),
    );
  }
}
