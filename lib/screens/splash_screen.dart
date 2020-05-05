///* Splash Screen *
import 'package:flutter/material.dart';

import 'package:raiplatformapp/widgets/bottomNavigationBarWidget.dart';
import 'dart:async';

///  here splash page, when application start it will view only 3 seconds.
class SplashScreen extends StatefulWidget {
  static const routeName = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    /// set timer to three seconds than navigate to home page

    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.pushReplacementNamed(
                  context, BottomNavigationBarWidget.routeName),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Center(
            ///SIO Logo image
            child: Image(
              image: AssetImage('assets/images/sio_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
