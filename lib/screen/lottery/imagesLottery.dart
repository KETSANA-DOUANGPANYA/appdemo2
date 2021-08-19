import 'package:flutter/material.dart';

class ImageLottery extends StatelessWidget {
  final String loterryImage;

  ImageLottery({@required this.loterryImage});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.red)),
      color: Colors.deepOrange,
      textColor: Colors.white,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(10.0),
      splashColor: Colors.red,
      onPressed: () {},
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              loterryImage
            ),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
