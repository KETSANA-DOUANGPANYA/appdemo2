import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';
import 'lottery/imagesLottery.dart';
import 'lottery/numberLottery.dart';
import 'lottery/random.dart';
import 'lottery/lottery.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:delayed_display/delayed_display.dart';

class Run extends StatefulWidget {
  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> with SingleTickerProviderStateMixin {
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

  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  int variable1, variable2, variable3, variable4;

  //initstate
  initLottery() {
    lottery.shuffle();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLottery();
    YourLuckyNumber();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuild widget');
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    Size size = MediaQuery.of(context).size;
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text('ທຳນາຍຫວຍ'),
                  subtitle: Text("ໜ້າຫຼັກ"),
                  // trailing: Icon(Icons.more_vert),
                  onTap: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_view_day_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text('ທຳນາຍຫວຍຕາມປີເກີດ'),
                  onTap: () {
                    Navigator.pushNamed(context, '/TwoScreen');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.timeline,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text('ທຳນາຍຫວຍຕາມສະຖິຕິ'),
                  // trailing: Icon(Icons.more_vert),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text('ມື້ຫວຍອອກ'),

                  // trailing: Icon(Icons.more_vert),
                  onTap: () {},
                ),

                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.settings,
                          size: 40,
                          color: Colors.black,
                        ),
                        title: Text('ຕັ້ງຄ່າ'),

                        // trailing: Icon(Icons.more_vert),
                        onTap: () {},
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.exit_to_app,
                          size: 40,
                          color: Colors.black,
                        ),
                        title: Text('ອອກຈາກເເອັບ'),

                        // trailing: Icon(Icons.more_vert),
                        onTap: () {
                          if (Platform.isAndroid) {
                            SystemNavigator.pop();
                          } else if (Platform.isIOS) {
                            exit(0);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      // controller: PageController(viewportFraction: 0.8),
                      // scrollDirection: Axis.horizontal,
                      // pageSnapping: true,
                      children: <Widget>[
                        Container(
                            child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.white, Colors.white],
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              InkWell(
                                child:
                                    Icon(Icons.menu, color: Colors.deepOrange),
                                onTap: () {
                                  setState(() {
                                    if (isCollapsed)
                                      _controller.forward();
                                    else
                                      _controller.reverse();

                                    isCollapsed = !isCollapsed;
                                  });
                                },
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,

                                children: <Widget>[
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "ທຳນາຍຫວຍ",
                                    style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                  Text(
                                    'ສາມາດກົດ"ທຳນາຍ"',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                  Text(
                                    'ເພື່ອບອກເລກທີ່ຈະອອກໄດ້',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Center(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.deepOrange,
                                            Colors.orange
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            //       Text(variable1.toString(), style: TextStyle(
                                            //     fontSize: 50.0,
                                            //     fontWeight: FontWeight.bold,
                                            //     color: Color(0xFFffffff)),
                                            // ),
                                            //       Text(variable2.toString(), style: TextStyle(
                                            //           fontSize: 50.0,
                                            //           fontWeight: FontWeight.bold,
                                            //           color: Color(0xFFffffff)),
                                            //       ),
                                            //       Text(variable3.toString(), style: TextStyle(
                                            //           fontSize: 50.0,
                                            //           fontWeight: FontWeight.bold,
                                            //           color: Color(0xFFffffff)),
                                            //       ),
                                            //       Text(variable4.toString(), style: TextStyle(
                                            //           fontSize: 50.0,
                                            //           fontWeight: FontWeight.bold,
                                            //           color: Color(0xFFffffff)),
                                            //       ),
                                            //       Text(lottery[_lotteryIndex]['lotteryNumbers'].toString(), style: TextStyle(
                                            //           fontSize: 50.0,
                                            //           fontWeight: FontWeight.bold,
                                            //           color: Color(0xFFffffff)),
                                            //       ),
                                            NumberSlideAnimation(
                                              number: "$variable1",
                                              duration:
                                                  Duration(milliseconds: 2000),
                                              curve: Curves.bounceIn,
                                              textStyle: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFffffff)),
                                            ),
                                            NumberSlideAnimation(
                                              number: "$variable2",
                                              duration:
                                                  Duration(milliseconds: 3000),
                                              curve: Curves.bounceIn,
                                              textStyle: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFffffff)),
                                            ),
                                            NumberSlideAnimation(
                                              number: "$variable3",
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              curve: Curves.bounceIn,
                                              textStyle: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFffffff)),
                                            ),
                                            NumberSlideAnimation(
                                              number: "$variable4",
                                              duration:
                                                  Duration(milliseconds: 5000),
                                              curve: Curves.bounceIn,
                                              textStyle: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFffffff)),
                                            ),
                                            NumberSlideAnimation(
                                              number:
                                                  "${lottery[_lotteryIndex]['lotteryNumbers']}",
                                              duration:
                                                  Duration(milliseconds: 6000),
                                              curve: Curves.bounceIn,
                                              textStyle: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFffffff)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.red)),
                                    color: Colors.deepOrange,
                                    textColor: Colors.white,
                                    disabledTextColor: Colors.black,
                                    padding: EdgeInsets.all(10.0),
                                    splashColor: Colors.red,
                                    onPressed: () {},
                                    child: DelayedDisplay(
                                      delay: Duration(seconds: 6),
                                      child: Container(
                                        width: double.infinity,
                                        height: 300,
                                        child: Image.asset(
                                          lottery[_lotteryIndex]
                                              ['lotteryImage'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // child: Container(
                                    //   width: double.infinity,
                                    //   height: 300,
                                    //   child: Image.asset( lottery[_lotteryIndex]
                                    //   ['lotteryImage'], fit: BoxFit.cover,),
                                    // ),
                                  ),
                                  // Lottery(lotteryIndex: _lotteryIndex, lottery: lottery, val1: variable1,val2: variable2,val3: variable3,val4: variable4,),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.red)),
                                    color: Colors.deepOrange,
                                    textColor: Colors.white,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    disabledTextColor: Colors.black,
                                    padding: EdgeInsets.all(9.0),
                                    splashColor: Colors.red,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Run()));
                                    },
                                    child: Text(
                                      "ທຳນາຍ",
                                      style: TextStyle(fontSize: 40.0),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void YourLuckyNumber() {
    var random = Random();
    int luckyNo = random.nextInt(9);
    int luckyNo2 = random.nextInt(9);
    int luckyNo3 = random.nextInt(9);
    int luckyNo4 = random.nextInt(9);

    setState(() {
      variable1 = luckyNo;
      variable2 = luckyNo2;
      variable3 = luckyNo3;
      variable4 = luckyNo4;
    });
  }

  // Random Lottery
  void _randomLottery() {
    setState(() {
      initLottery();
      YourLuckyNumber();
    });
  }
}
