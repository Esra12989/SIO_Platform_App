import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:raiplatformapp/style/style.dart';

//* App Bar Widget *
class appBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            // ** App Logo **
            Image.asset(
              'assets/images/sio_logo.png',
              fit: BoxFit.fill,
              height: 40.0,
              width: 200.0,
              alignment: Alignment.center,
            ),
          ],
        ),
        actions: <Widget>[
          // ** Change theme color button **
          IconButton(
            icon: Icon(
              Icons.format_color_fill,
              size: 25.0,
              color: kBlueColor,
            ),
            onPressed: () {},
          ),
          //** Change language button **
          FlatButton.icon(
            onPressed: () {
              //TODO:Write code to change language
            },
            label: Text(
              'EN',
              style: TextStyle(
                color: kBlueColor,
                fontSize: 10.0,
              ),
            ),
            icon: Icon(Icons.language, size: 25.0, color: kBlueColor),
          ),
        ],
      ),
    );
  }
}
