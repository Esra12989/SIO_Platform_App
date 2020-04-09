import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getflutter/getflutter.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:raiplatformapp/style/style.dart';

//* News SlideShow Widget *
class ImagesSlide extends StatefulWidget {
  @override
  _ImagesSlideState createState() => _ImagesSlideState();
}

class _ImagesSlideState extends State<ImagesSlide> {
  //** List of Images **
  final List<String> imageList = [
    "assets/images/c1.jpg",
    "assets/images/c2.jpg",
    "assets/images/c3.jpg",
    "assets/images/c4.jpg",
    "assets/images/c5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      autoPlay: true,
      pagination: true,
      viewportFraction: 0.8,
      activeIndicator: kBlueColor,
      passiveIndicator: Colors.white,
      aspectRatio: 2.0,
      items: imageList.map(
        (url) {
          return GFImageOverlay(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: 200,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.40), BlendMode.darken),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Padding(
                padding: EdgeInsets.only(top: 10, left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.only(right: 20.0, top: 80.0, left: 20.0),
                        child: Text(
                          'سمو محافظ الأحساء يوجه بحملات ميدانية مكثفة للوقوف على تطبيق الإجراءات الاحترازية.',
                          style: drawerheading(),
                          textDirection: TextDirection.rtl,
                        )),
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
    );
  }
}
