import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';

class HomeButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final String IconImage;
  HomeButton({this.buttonText, this.onPressed, this.IconImage});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  IconImage,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  buttonText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: kButtonColor,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 30.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  10.0, // horizontal, move right 10
                  10.0, // vertical, move down 10
                ),
              )
            ],
          ),
//          width: 150,
//          height: 120,
        ),
      ),
    );
  }
}
