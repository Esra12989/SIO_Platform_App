import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';

//* Home Buttons Widget *
class HomeButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final IconData IconImage;
  HomeButton({this.buttonText, this.onPressed, this.IconImage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          height: 120,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  IconImage,
                  color: kBlueColor,
                  size: 70,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  buttonText,
                  style: TextStyle(
                    color: kBlueColor,
                    fontFamily: kArabicFontMedium,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  5.0, // horizontal, move right 10
                  5.0, // vertical, move down 10
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
