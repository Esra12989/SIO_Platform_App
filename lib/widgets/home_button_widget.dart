import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';

///* Home Buttons Widget *
class HomeButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final String IconImage;
  HomeButton({this.buttonText, this.onPressed, this.IconImage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FlatButton(
          onPressed: onPressed,
          child: Container(
            height: MediaQuery.of(context).size.width * 0.26,
            width: MediaQuery.of(context).size.width * 0.45,
            margin: EdgeInsets.all(4.0),
            padding: EdgeInsets.all(4.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    IconImage,
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.08,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    buttonText,
                    style: TextStyle(
                      color: kBlueColor,
                      fontFamily: kArabicFontMedium,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                  offset: Offset(
                    3.0, // horizontal, move right 10
                    3.0, // vertical, move down 10
                  ),
                )
              ],
            ),
//          width: 150,
//          height: 120,
          ),
        ),
      ),
    );
  }
}
