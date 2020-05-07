///هنا الصفحة الرئيسة *
import 'package:flutter/material.dart';
import 'package:raiplatformapp/widgets/home_button_widget.dart';
import 'package:raiplatformapp/widgets/image_slide.dart';
import '../style/style.dart';
import '../widgets/image_slide.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Image.asset(
                    'assets/images/Background.png',
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 18.0, right: 2.0, bottom: 9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.png',
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.45,
                      fit: BoxFit.cover,
                    ),
                    FlatButton(
                      child: Text(
                        'English',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: kEnglishFontBold,
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.12,
                    right: MediaQuery.of(context).size.width * 0.04,
                    left: MediaQuery.of(context).size.width * 0.02),
                child: ImagesSlide(),
              )
            ],
          ),

          ///news slide show widget.
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          /// ** Buttons in home page. **
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    HomeButton(
                        buttonText: 'المركز الاعلامي',
                        onPressed: () {
                          //TODO:here write the code to navigate to media center page.
                        },
                        IconImage: 'assets/images/k2.png'),
                    HomeButton(
                        buttonText: 'الخدمات الالكترونية',
                        onPressed: () {
                          //TODO:here write the code to navigate to electronic services page.
                        },
                        IconImage: 'assets/images/k1.png'),
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
                        IconImage: 'assets/images/k4.png'),
                    HomeButton(
                        buttonText: 'البيانات المفتوحة',
                        onPressed: () {
                          //TODO:here write the code to navigate to open data page.
                        },
                        IconImage: 'assets/images/k3.png'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
