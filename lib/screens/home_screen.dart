import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/appBarWidget.dart';
import 'package:raiplatformapp/widgets/bottomNavigationBarWidget.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:raiplatformapp/style/style.dart';
import 'package:raiplatformapp/widgets/home_button_widget.dart';
//هنا الصفحة الرئيسة

class HomeScreen extends StatefulWidget {
  static const routeName = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    "assets/images/c1.jpg",
    "assets/images/c2.jpg",
    "assets/images/c3.jpg",
    "assets/images/c4.jpg",
    "assets/images/c5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar widget
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: appBarWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //news slide show widget.
          GFCarousel(
            autoPlay: true,
            pagination: true,
            viewportFraction: 1.0,
            activeIndicator: kButtonColor,
            passiveIndicator: Colors.white,
            aspectRatio: 2.0,
            items: imageList.map(
              (url) {
                return GFImageOverlay(
                  height: 150,
//
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.40), BlendMode.darken),
                  borderRadius: BorderRadius.all(
                    Radius.circular(0),
                  ),

                  child: Padding(
                      padding: EdgeInsets.only(top: 10, left: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 70.0),
                              child:
                                  Text('اخبار حصرية', style: drawerheading())),
                        ],
                      )),
                  image: AssetImage(url),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                // index;
              });
            },
          ),
          // Buttons in home page.
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HomeButton(
                    buttonText: 'المركز الاعلامي',
                    onPressed: () {
                      //here write the code to navigate to media center page.
                    },
                    IconImage: 'assets/images/k2.png',
                  ),
                  HomeButton(
                    buttonText: 'الخدمات الالكترونية',
                    onPressed: () {
                      //here write the code to navigate to electronic services page.
                    },
                    IconImage: 'assets/images/k1.png',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HomeButton(
                    buttonText: 'البلاغات',
                    onPressed: () {
                      //here write the code to navigate to other  page.
                    },
                    IconImage: 'assets/images/k4.png',
                  ),
                  HomeButton(
                    buttonText: 'البيانات المفتوحة',
                    onPressed: () {
                      //here write the code to navigate to open data page.
                    },
                    IconImage: 'assets/images/k3.png',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
