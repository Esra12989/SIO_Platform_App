//** App Styles **
import 'package:flutter/material.dart';

//colors
const Color kBlueColor = Color(0xff006BB1);
const Color kYellowColor = Color(0xffF7CF3C);
//fonts
const String kArabicFontMedium = 'GEDinarOne';
const String kArabicFontLight = 'GEDinarOneLight';
const String kEnglishFontBold = 'RotisSemiSansStdBold';
const String kEnglishFontNormal = 'RotisSemiSansStd';

TextStyle drawerheading() {
  return TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w300,
      fontFamily: kArabicFontMedium,
      color: Colors.white,
      letterSpacing: 0.5);
}
