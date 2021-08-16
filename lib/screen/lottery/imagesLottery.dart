import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(questionText), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)));
  }
}
