import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';
import 'package:raiplatformapp/screens/home_screen.dart';
import 'package:raiplatformapp/screens/CallUS.dart';
import 'package:raiplatformapp/screens/branches.dart';
import 'package:raiplatformapp/screens/about_sio.dart';

//* BottomNavigationBar widget(Bottom Menu)*
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.grey[900],
        backgroundColor: kBlueColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'الرئيسية',
              style: TextStyle(fontFamily: kArabicFontLight),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            title: Text(
              'عن المؤسسة ',
              style: TextStyle(fontFamily: kArabicFontLight),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
            ),
            title: Text(
              'فروع المؤسسة',
              style: TextStyle(fontFamily: kArabicFontLight),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
            ),
            title: Text(
              'اتصل بنا',
              style: TextStyle(fontFamily: kArabicFontLight),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
