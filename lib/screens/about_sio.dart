//هنا صفحة عن المؤسسة*
import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/appBarWidget.dart';

class AboutSIO extends StatefulWidget {
  static const routeName = 'aboutSIO_screen';
  @override
  _AboutSIOState createState() => _AboutSIOState();
}

class _AboutSIOState extends State<AboutSIO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: appBarWidget(),
      ),
      body: Text('About SIO screen'),
    );
  }
}
