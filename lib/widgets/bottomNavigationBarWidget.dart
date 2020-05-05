import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';
import 'package:raiplatformapp/screens/home_screen.dart';
import 'package:raiplatformapp/screens/CallUS.dart';
import 'package:raiplatformapp/screens/branches.dart';
import 'package:raiplatformapp/screens/about_sio.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import '../style/style.dart';
import 'package:flutter_icons/flutter_icons.dart';

///* BottomNavigationBar widget(Bottom Menu)*
class BottomNavigationBarWidget extends StatefulWidget {
  static const routeName = 'bottom_navigation_bar';
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomeScreen(),
    AboutSIO(),
    Branches(),
    CallUs(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: GradientBottomNavigationBar(
        ///Gradient colors in BottomNavigationBar
        backgroundColorStart: kBlueColor,
        backgroundColorEnd: Color(0xff009DD6),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black54,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.home),
            title: Text(
              'الرئيسية',
              style: TextStyle(
                  fontFamily: kArabicFontLight, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_information_circle_outline),
            title: Text(
              'عن المؤسسة ',
              style: TextStyle(
                  fontFamily: kArabicFontLight, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.location_pin),
            title: Text(
              'فروع المؤسسة',
              style: TextStyle(
                  fontFamily: kArabicFontLight, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(SimpleLineIcons.phone),
            title: Text(
              'اتصل بنا',
              style: TextStyle(
                  fontFamily: kArabicFontLight, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
