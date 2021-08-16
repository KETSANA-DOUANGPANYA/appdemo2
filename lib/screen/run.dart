import 'package:flutter/material.dart';
import 'lottery/random.dart';
import 'lottery/lottery.dart';

class Run extends StatefulWidget {
  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {
  // Score question and answer
  var _lotteryIndex = 0;
  List<Map<String, Object>> lottery = [
    {
      'lotteryImage': 'assets/images/Dung.jpg',
      'lotteryNumbers': "00",
    },
    {
      'lotteryImage': 'assets/images/Little fish.jpg',
      'lotteryNumbers': "01",
    },
    {
      'lotteryImage': 'assets/images/Snails.jpg',
      'lotteryNumbers': "02",
    },
    {
      'lotteryImage': 'assets/images/Goose.jpg',
      'lotteryNumbers': "03",
    },
    {
      'lotteryImage': 'assets/images/Peacock.jpg',
      'lotteryNumbers': "04",
    },
    {
      'lotteryImage': 'assets/images/Lion.jpg',
      'lotteryNumbers': "05",
    },
    {
      'lotteryImage': 'assets/images/Tiger.jpg',
      'lotteryNumbers': "06",
    },
    {
      'lotteryImage': 'assets/images/Pig.jpg',
      'lotteryNumbers': "07",
    },
    {
      'lotteryImage': 'assets/images/Rabbit.jpg',
      'lotteryNumbers': "08",
    },
    {
      'lotteryImage': 'assets/images/Buffalo.jpg',
      'lotteryNumbers': "09",
    },
    {
      'lotteryImage': 'assets/images/ນາກນ້ຳ.jpg',
      'lotteryNumbers': "10",
    },
    {
      'lotteryImage': 'assets/images/Dogs.jpg',
      'lotteryNumbers': "11",
    },
    {
      'lotteryImage': 'assets/images/Horses.jpg',
      'lotteryNumbers': "12",
    },
    {
      'lotteryImage': 'assets/images/Elephants.jpg',
      'lotteryNumbers': "13",
    },
    {
      'lotteryImage': 'assets/images/Cathome.jpg',
      'lotteryNumbers': "14",
    },
    {
      'lotteryImage': 'assets/images/Mouse.jpg',
      'lotteryNumbers': "15",
    },
    {
      'lotteryImage': 'assets/images/Bee.jpg',
      'lotteryNumbers': "16",
    },
    {
      'lotteryImage': 'assets/images/ນົກຍາງ.jpg',
      'lotteryNumbers': "17",
    },
    {
      'lotteryImage': 'assets/images/Catwild.jpg',
      'lotteryNumbers': "18",
    },
    {
      'lotteryImage': 'assets/images/Butterfly.jpg',
      'lotteryNumbers': "19",
    },
    {
      'lotteryImage': 'assets/images/Dung.jpg',
      'lotteryNumbers': "20",
    },
    {
      'lotteryImage': 'assets/images/ນົກເເອ່ນ.jpg',
      'lotteryNumbers': "21",
    },
    {
      'lotteryImage': 'assets/images/ນົກກາງເເກ.jpg',
      'lotteryNumbers': "22",
    },
    {
      'lotteryImage': 'assets/images/Monkey.jpg',
      'lotteryNumbers': "23",
    },
    {
      'lotteryImage': 'assets/images/Frogs.jpg',
      'lotteryNumbers': "24",
    },
    {
      'lotteryImage': 'assets/images/vulture.jpg',
      'lotteryNumbers': "25",
    },
    {
      'lotteryImage': 'assets/images/ນາກບີນ.jpg',
      'lotteryNumbers': "26",
    },
    {
      'lotteryImage': 'assets/images/Turtles.jpg',
      'lotteryNumbers': "27",
    },
    {
      'lotteryImage': 'assets/images/Chicken.jpg',
      'lotteryNumbers': "28",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "29",
    },
    {
      'lotteryImage': 'assets/images/Big fish.jpg',
      'lotteryNumbers': "30",
    },
    {
      'lotteryImage': 'assets/images/Shrimp.jpg',
      'lotteryNumbers': "31",
    },
    {
      'lotteryImage': 'assets/images/Snake.jpg',
      'lotteryNumbers': "32",
    },
    {
      'lotteryImage': 'assets/images/Spider.jpg',
      'lotteryNumbers': "33",
    },
    {
      'lotteryImage': 'assets/images/Deer.jpg',
      'lotteryNumbers': "34",
    },
    {
      'lotteryImage': 'assets/images/Goat.jpg',
      'lotteryNumbers': "35",
    },
    {
      'lotteryImage': 'assets/images/Civet.jpg',
      'lotteryNumbers': "36",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "37",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "38",
    },
    {
      'lotteryImage': 'assets/images/Crabs.jpg',
      'lotteryNumbers': "39",
    },
    {
      'lotteryImage': 'assets/images/Eagle.jpg',
      'lotteryNumbers': "40",
    },
    {
      'lotteryImage': 'assets/images/Little fish.jpg',
      'lotteryNumbers': "41",
    },
    {
      'lotteryImage': 'assets/images/Snails.jpg',
      'lotteryNumbers': "42",
    },
    {
      'lotteryImage': 'assets/images/Goose.jpg',
      'lotteryNumbers': "43",
    },
    {
      'lotteryImage': 'assets/images/Peacock.jpg',
      'lotteryNumbers': "44",
    },
    {
      'lotteryImage': 'assets/images/Lion.jpg',
      'lotteryNumbers': "45",
    },
    {
      'lotteryImage': 'assets/images/Tiger.jpg',
      'lotteryNumbers': "46",
    },
    {
      'lotteryImage': 'assets/images/Pig.jpg',
      'lotteryNumbers': "47",
    },
    {
      'lotteryImage': 'assets/images/Rabbit.jpg',
      'lotteryNumbers': "48",
    },
    {
      'lotteryImage': 'assets/images/Buffalo.jpg',
      'lotteryNumbers': "49",
    },
    {
      'lotteryImage': 'assets/images/ນາກນ້ຳ.jpg',
      'lotteryNumbers': "50",
    },
    {
      'lotteryImage': 'assets/images/Dogs.jpg',
      'lotteryNumbers': "51",
    },
    {
      'lotteryImage': 'assets/images/Horses.jpg',
      'lotteryNumbers': "52",
    },
    {
      'lotteryImage': 'assets/images/Elephants.jpg',
      'lotteryNumbers': "53",
    },
    {
      'lotteryImage': 'assets/images/Cathome.jpg',
      'lotteryNumbers': "54",
    },
    {
      'lotteryImage': 'assets/images/Mouse.jpg',
      'lotteryNumbers': "55",
    },
    {
      'lotteryImage': 'assets/images/Bee.jpg',
      'lotteryNumbers': "56",
    },
    {
      'lotteryImage': 'assets/images/ນົກຍາງ.jpg',
      'lotteryNumbers': "57",
    },
    {
      'lotteryImage': 'assets/images/Catwild.jpg',
      'lotteryNumbers': "58",
    },
    {
      'lotteryImage': 'assets/images/Butterfly.jpg',
      'lotteryNumbers': "59",
    },
    {
      'lotteryImage': 'assets/images/Dung.jpg',
      'lotteryNumbers': "60",
    },
    {
      'lotteryImage': 'assets/images/ນົກເເອ່ນ.jpg',
      'lotteryNumbers': "61",
    },
    {
      'lotteryImage': 'assets/images/ນົກກາງເເກ.jpg',
      'lotteryNumbers': "62",
    },
    {
      'lotteryImage': 'assets/images/Monkey.jpg',
      'lotteryNumbers': "63",
    },
    {
      'lotteryImage': 'assets/images/Frogs.jpg',
      'lotteryNumbers': "64",
    },
    {
      'lotteryImage': 'assets/images/vulture.jpg',
      'lotteryNumbers': "65",
    },
    {
      'lotteryImage': 'assets/images/ນາກບີນ.jpg',
      'lotteryNumbers': "66",
    },
    {
      'lotteryImage': 'assets/images/Turtles.jpg',
      'lotteryNumbers': "67",
    },
    {
      'lotteryImage': 'assets/images/Chicken.jpg',
      'lotteryNumbers': "68",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "69",
    },
    {
      'lotteryImage': 'assets/images/Big fish.jpg',
      'lotteryNumbers': "70",
    },
    {
      'lotteryImage': 'assets/images/Shrimp.jpg',
      'lotteryNumbers': "71",
    },
    {
      'lotteryImage': 'assets/images/Snake.jpg',
      'lotteryNumbers': "72",
    },
    {
      'lotteryImage': 'assets/images/Spider.jpg',
      'lotteryNumbers': "73",
    },
    {
      'lotteryImage': 'assets/images/Deer.jpg',
      'lotteryNumbers': "74",
    },
    {
      'lotteryImage': 'assets/images/Goat.jpg',
      'lotteryNumbers': "75",
    },
    {
      'lotteryImage': 'assets/images/Civet.jpg',
      'lotteryNumbers': "76",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "77",
    },
    {
      'lotteryImage': 'assets/images/Ex.jpg',
      'lotteryNumbers': "78",
    },
    {
      'lotteryImage': 'assets/images/Crabs.jpg',
      'lotteryNumbers': "79",
    },
    {
      'lotteryImage': 'assets/images/Eagle.jpg',
      'lotteryNumbers': "80",
    },
    {
      'lotteryImage': 'assets/images/Little fish.jpg',
      'lotteryNumbers': "81",
    },
    {
      'lotteryImage': 'assets/images/Snails.jpg',
      'lotteryNumbers': "82",
    },
    {
      'lotteryImage': 'assets/images/Goose.jpg',
      'lotteryNumbers': "83",
    },
    {
      'lotteryImage': 'assets/images/Peacock.jpg',
      'lotteryNumbers': "84",
    },
    {
      'lotteryImage': 'assets/images/Lion.jpg',
      'lotteryNumbers': "85",
    },
    {
      'lotteryImage': 'assets/images/Tiger.jpg',
      'lotteryNumbers': "86",
    },
    {
      'lotteryImage': 'assets/images/Pig.jpg',
      'lotteryNumbers': "87",
    },
    {
      'lotteryImage': 'assets/images/Rabbit.jpg',
      'lotteryNumbers': "88",
    },
    {
      'lotteryImage': 'assets/images/Buffalo.jpg',
      'lotteryNumbers': "89",
    },
    {
      'lotteryImage': 'assets/images/ນາກນ້ຳ.jpg',
      'lotteryNumbers': "90",
    },
    {
      'lotteryImage': 'assets/images/Dogs.jpg',
      'lotteryNumbers': "91",
    },
    {
      'lotteryImage': 'assets/images/Horses.jpg',
      'lotteryNumbers': "92",
    },
    {
      'lotteryImage': 'assets/images/Elephants.jpg',
      'lotteryNumbers': "93",
    },
    {
      'lotteryImage': 'assets/images/Cathome.jpg',
      'lotteryNumbers': "94",
    },
    {
      'lotteryImage': 'assets/images/Mouse.jpg',
      'lotteryNumbers': "95",
    },
    {
      'lotteryImage': 'assets/images/Bee.jpg',
      'lotteryNumbers': "96",
    },
    {
      'lotteryImage': 'assets/images/ນົກຍາງ.jpg',
      'lotteryNumbers': "97",
    },
    {
      'lotteryImage': 'assets/images/Catwild.jpg',
      'lotteryNumbers': "98",
    },
    {
      'lotteryImage': 'assets/images/Butterfly.jpg',
      'lotteryNumbers': "99",
    },
    {
      'lotteryImage': 'assets/images/lion.jpg',
      'lotteryNumbers': "100",
    },
  ];

  //initstate
  initLottery() {
    _lotteryIndex = 0;
    lottery.shuffle();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLottery();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Quiz(
                  lotteryIndex: _lotteryIndex,
                  lottery: lottery,
                ),
                Result(
                  onResetPressed: _randomLottery,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

// Reset quiz
  void _randomLottery() {
    setState(() {
      initLottery();
    });
  }
}
