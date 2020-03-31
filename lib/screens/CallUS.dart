import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/appBarWidget.dart';

//هنا صفحة اتصل بنا
class CallUs extends StatefulWidget {
  @override
  _CallUsState createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: appBarWidget(),
      ),
      body: Text('Call us screen '),
    );
  }
}
