import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';

class appBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/sio_logo.png',
              fit: BoxFit.fill,
              height: 50.0,
              width: 200.0,
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.language, size: 30.0, color: kButtonColor),
                label: Text(
                  'ENG',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xfff1c40f),
                      fontWeight: FontWeight.bold,
                      textBaseline: TextBaseline.alphabetic),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.color_lens,
                  size: 30.0,
                ),
                color: kButtonColor,
                onPressed: () {
                  // Implement change color here...
                },
              ),
            ],
          ),
//        SizedBox(
//          width: 70,
//        ),
        ],
      ),
    );
  }
}
