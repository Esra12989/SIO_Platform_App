import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'package:raiplatformapp/widgets/bottomNavigationBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rai Platform',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF0265a3),
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        BottomNavigationBarWidget.routeName: (context) =>
            BottomNavigationBarWidget(),
      },
    );
  }
}
