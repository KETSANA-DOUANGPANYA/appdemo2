import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function onResetPressed;

  Result({ @required this.onResetPressed});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlatButton(
            onPressed: onResetPressed,
            child: Text('ທຳນາຍ'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
