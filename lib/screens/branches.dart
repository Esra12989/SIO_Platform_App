/// هنا صفحة فروعنا*
import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/appBarWidget.dart';

class Branches extends StatefulWidget {
  static const routeName = 'branches_screen';
  @override
  _BranchesState createState() => _BranchesState();
}

class _BranchesState extends State<Branches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: appBarWidget(),
      ),
      body: Text('Branches screen'),
    );
  }
}
