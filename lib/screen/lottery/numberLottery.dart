import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String lotteryNumbers;

  Answer({@required this.lotteryNumbers});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        lotteryNumbers,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFD12424),
            fontSize: 30),
      ),
    );
  }
}
