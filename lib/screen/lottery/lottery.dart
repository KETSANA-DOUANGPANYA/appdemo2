import 'package:flutter/material.dart';
import 'numberLottery.dart';
import 'imagesLottery.dart';

class Quiz extends StatelessWidget {
  final int lotteryIndex;
  final List<Map<String, Object>> lottery;

  Quiz({
    @required this.lotteryIndex,
    @required this.lottery,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: lottery[lotteryIndex]['lotteryImage']),
        SizedBox(
          height: 50,
        ),
        Answer(lotteryNumbers: lottery[lotteryIndex]['lotteryNumbers'])
      ],
    );
  }
}
