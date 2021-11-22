import 'package:flutter/material.dart';
import 'numberLottery.dart';
import 'imagesLottery.dart';

class Lottery extends StatelessWidget {
  final int lotteryIndex;
  final List<Map<String, Object>> lottery;
  final int val1;
  final int val2;
  final int val3;
  final int val4;

  Lottery({
    @required this.lotteryIndex,
    @required this.lottery,
    @required this.val1,
    @required this.val2,
    @required this.val3,
    @required this.val4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NumberLottery(lotteryNumbers: lottery[lotteryIndex]['lotteryNumbers'],value1: val1,value2: val2,value3: val3,value4: val4),
        SizedBox(
          height: 20,
        ),
        ImageLottery(loterryImage: lottery[lotteryIndex]['lotteryImage']),
      ],
    );
  }
}
