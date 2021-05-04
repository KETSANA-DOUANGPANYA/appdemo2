import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThreeScreen extends StatefulWidget {
  @override
  _ThreeScreenState createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  int variable = 0,
      variable2 = 0,
      variable3 = 0,
      variable4 = 0,
      variable5 = 0,
      variable6 = 0;
  @override
  void initState() {
    super.initState();
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
                    Navigator.pushNamed(context, '/ThreeScreen');
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
                  onTap: () {
                    Navigator.pushNamed(context, '/ThreeScreen');
                  },
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
                ListTile(
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
                SizedBox(
                  height: 250,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text('ຕັ້ງຄ່າ'),

                  // trailing: Icon(Icons.more_vert),
                  onTap: () {},
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
                                  Container(
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
                                      child: RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: (variable).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: (variable2).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '    ',
                                            ),
                                            TextSpan(
                                              text: (variable3).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: (variable4).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: '    ',
                                            ),
                                            TextSpan(
                                              text: (variable5).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: (variable6).toString(),
                                              style: TextStyle(
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  // ignore: deprecated_member_use
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
                                      Navigator.pushNamed(context, '/Run');
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
}
