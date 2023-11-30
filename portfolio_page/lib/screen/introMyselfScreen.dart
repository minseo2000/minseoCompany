import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroMyselfScreen extends StatefulWidget {
  const IntroMyselfScreen({Key? key}) : super(key: key);

  @override
  State<IntroMyselfScreen> createState() => _IntroMyselfScreenState();
}

class _IntroMyselfScreenState extends State<IntroMyselfScreen> {


  final List<String> homePageProjectImageList = [
    'assets/img/homePageProjectImage/screen1.png',
    'assets/img/homePageProjectImage/screen2.png',
    'assets/img/homePageProjectImage/screen3.png',
    'assets/img/homePageProjectImage/screen4.png',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff66cdaa),
        toolbarHeight: 100.0,
        leading: Container(
          margin: EdgeInsets.only(
            left: 80.0,
            top: 20.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Minseo Park', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text('꿈은 사업가', style: TextStyle(fontSize: 15.0),),
            ],
          ),
        ),
        leadingWidth: 300.0,
      ),
      backgroundColor: Color(0xff66cdaa),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 100.0,
                  right: 100.0
                ),
                width: MediaQuery.of(context).size.width,
                height: 600.0,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(

                        child: Center(
                          child: ClipRRect(
                            child: Image.asset('assets/img/minseo.png', width: 250.0, height: 250.0, fit: BoxFit.cover,),
                            borderRadius: BorderRadius.all(
                              Radius.circular(1000.0)
                            ),
                          )
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 100.0,
                          left: 50.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text('Hello,', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
                            Text('a bit about me : ', style: TextStyle(fontSize: 20.0),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                    left: 50.0,
                  right: 50.0
                ),
                padding: EdgeInsets.only(

                  top: 50.0,
                ),
                width: MediaQuery.of(context).size.width,
                height: 600.0,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Portfolio', style: TextStyle(fontSize: 40.0, color: Color(0xff66cdaa),),),
                          Text('그동안 작업했던 프로젝트를 기록했습니다!', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      margin: EdgeInsets.only(left: 50.0),
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          InkWell(
                            onTap: () async{
                              !await launchUrl(Uri.parse('http://minseotest.iptime.org'));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.5,
                                      color: Colors.grey
                                  ),
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              width: 300.0,
                              height: 200.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10.0,),
                                  Text('자기소개 웹페이지', style: TextStyle(fontSize: 15.0, color: Colors.grey),),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15.0,
                                        left: 20.0,
                                        right: 20.0
                                    ),
                                    width: MediaQuery.of(context).size.width - 100.0,
                                    height: 0.5,
                                    color: Colors.grey,

                                  ),
                                  SizedBox(height: 10.0,),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('박민서에 대해 소개하는 페이지를 만들어보았습니다.', style: TextStyle(fontSize: 10.0, color: Colors.grey),)
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                      right: 20.0
                                    ),
                                    width: 300.0,
                                    height: 120.0,
                                    child: ClipRRect(
                                      child: Stack(
                                        children: [
                                          sliderWidget(),
                                          sliderIndicator(),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0)
                                      ),
                                    )
                                  )


                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 50.0,
                  right: 50.0
                ),
                padding: EdgeInsets.only(
                    left: 150.0,
                    right: 150.0
                ),
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Colors.black
                    )
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: homePageProjectImageList.map(
            (imgLink) {
          return Builder(
            builder: (context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    imgLink,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: homePageProjectImageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
