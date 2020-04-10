//هنا الصفحة الرئيسة *
import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/appBarWidget.dart';
import 'package:raiplatformapp/widgets/home_button_widget.dart';
import 'package:raiplatformapp/widgets/image_slide.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //** appBar widget **
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: appBarWidget(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            //news slide show widget.
            ImagesSlide(),

            // ** Buttons in home page. **
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeButton(
                        buttonText: 'المركز الاعلامي',
                        onPressed: () {
                          //TODO:here write the code to navigate to media center page.
                        },
                        IconImage: Icons.video_library),
                    HomeButton(
                        buttonText: 'الخدمات الالكترونية',
                        onPressed: () {
                          //TODO:here write the code to navigate to electronic services page.
                        },
                        IconImage: Icons.important_devices),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeButton(
                        buttonText: 'البلاغات',
                        onPressed: () {
                          //TODO:here write the code to navigate to other  page.
                        },
                        IconImage: Icons.warning),
                    HomeButton(
                        buttonText: 'البيانات المفتوحة',
                        onPressed: () {
                          //TODO:here write the code to navigate to open data page.
                        },
                        IconImage: Icons.library_books),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
