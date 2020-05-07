import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raiplatformapp/style/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raiplatformapp/models/news.dart';
import '../style/style.dart';

final List<News> _news = [
  News(
      id: 'n1',
      title: 'يستمر لمدة شهر من اليوم تسجيل الأنشطة ذات الطبيعة التجارية',
      imageUrl: 'assets/images/c1.jpg',
      dateTime: '24-4-2030'),
  News(
      id: 'n2',
      title:
          'انطلاق الحملة الميدانية للتأكد من تطبيق الإجراءات الوقائية والاحترازية في محافظة الأحساء',
      imageUrl: 'assets/images/c2.jpg',
      dateTime: '19-8-2019'),
  News(
      id: 'n3',
      title:
          'سمو محافظ الأحساء يوجه بحملات ميدانية مكثفة للوقوف على تطبيق الإجراءات الاحترازية',
      imageUrl: 'assets/images/c3.jpg',
      dateTime: '27-4-2018'),
  News(
      id: 'n4',
      title:
          'تطبيق أنظمة الري الحديث يساعد في تقليل استهلاك المياه للأغراض الزراعية',
      imageUrl: 'assets/images/c4.jpg',
      dateTime: '22-3-2020'),
  News(
      id: 'n5',
      title: 'انطلقت مساء اليوم السبت الموافق 26 رجب 1441هـ الحملة الميدانية',
      imageUrl: 'assets/images/c5.jpg',
      dateTime: '28-3-2019'),
];

///* News SlideShow Widget *
class ImagesSlide extends StatefulWidget {
  @override
  _ImagesSlideState createState() => _ImagesSlideState();
}

class _ImagesSlideState extends State<ImagesSlide> {
  @override

  ///** List of Images **

  final List<Widget> imageSliders = _news
      .map((item) => Container(
          child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0, // has the effect of softening the shadow
//                    spreadRadius:
//                        10.0, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      5.0, // vertical, move down 10
                    ),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: GridTile(
                  child: Image.asset(
                    item.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  footer: Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        item.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: kArabicFontMedium,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        item.dateTime,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: kEnglishFontBold),
                      ),
                      trailing: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.solidArrowAltCircleLeft,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ))))
      .toList();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.4,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imageSliders,
          ),
        ],
      ),
    );
  }
}
