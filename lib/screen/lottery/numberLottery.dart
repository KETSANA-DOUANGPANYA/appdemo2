import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';

class Answer extends StatefulWidget {
  final String lotteryNumbers;
  final int value1;
  final int value2;
  final int value3;
  final int value4;

  Answer(
      {@required this.lotteryNumbers,
      @required this.value1,
      @required this.value2,
      @required this.value3,
      @required this.value4});

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.deepOrange, Colors.orange],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberSlideAnimation(
                number: "${widget.value1}",
                duration:  Duration(seconds: 2),
                curve: Curves.bounceIn,
                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,color: Color(0xFFffffff)),
              ),
              NumberSlideAnimation(
                number: "${widget.value2}",
                duration:  Duration(seconds: 2),
                curve: Curves.bounceIn,
                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,color: Color(0xFFffffff)),
              ),
              NumberSlideAnimation(
                number: "${widget.value3}",
                duration:  Duration(seconds: 2),
                curve: Curves.bounceIn,
                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,color: Color(0xFFffffff)),
              ),
              NumberSlideAnimation(
                number: "${widget.value4}",
                duration:  Duration(seconds: 2),
                curve: Curves.bounceIn,
                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,color: Color(0xFFffffff)),
              ),
              NumberSlideAnimation(
                number: "${widget.lotteryNumbers}",
                duration:  Duration(seconds: 2),
                curve: Curves.bounceIn,
                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold,color: Color(0xFFffffff)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
