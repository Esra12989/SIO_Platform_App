import 'package:flutter/material.dart';

class News with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String dateTime;
  News(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.dateTime});
}
