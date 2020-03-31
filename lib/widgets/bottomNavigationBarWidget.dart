import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';
import 'package:raiplatformapp/screens/home_screen.dart';
import 'package:raiplatformapp/screens/CallUS.dart';
import 'package:raiplatformapp/screens/branches.dart';
import 'package:raiplatformapp/screens/about_sio.dart';

// //bottomNavigationBar widget(Bottom Menu)
class BottomNavigationBarWidget extends StatefulWidget {
  static const routeName = 'bottom_navigation_bar';
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 3;

  final List<Widget> _widgetOptions = [
    CallUs(),
    Branches(),
    AboutSIO(),
    HomeScreen(),
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
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
            ),
            title: Text(
              'اتصل بنا',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
            ),
            title: Text('فروع المؤسسة'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            title: Text(
              'عن المؤسسة ',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'الرئيسية',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kButtonColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
