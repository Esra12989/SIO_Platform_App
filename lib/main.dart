import 'package:flutter/material.dart';
import 'package:raiplatformapp/style/style.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'package:raiplatformapp/widgets/bottomNavigationBarWidget.dart';
import 'package:raiplatformapp/screens/CallUS.dart';
import 'package:raiplatformapp/screens/about_sio.dart';
import 'package:raiplatformapp/screens/branches.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        // To make application pages from right to left
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        );
      },
      title: 'Rai Platform',
      theme: ThemeData.light()
          .copyWith(primaryColor: kBlueColor, accentColor: kYellowColor),
      home: SplashScreen(),
      //**Screen Roots**
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        BottomNavigationBarWidget.routeName: (context) =>
            BottomNavigationBarWidget(),
        CallUs.routeName: (context) => CallUs(),
        AboutSIO.routeName: (context) => AboutSIO(),
        Branches.routeName: (context) => Branches(),
      },
    );
  }
}
