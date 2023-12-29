import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix_home_page/component/footerComponent.dart';
import 'package:netflix_home_page/component/mainScreenComponent.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: renderMainAppBar(context),
      backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                  height: 860.0,
                  child: Column(
                    children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 450.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  height: 5000.0,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderTop10Contents('오늘 대한민국의 TOP 10 시리즈')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderTop10Contents('오늘 대한민국의 TOP 10 시리즈')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderTop10Contents('오늘 대한민국의 TOP 10 시리즈')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderTop10Contents('오늘 대한민국의 TOP 10 시리즈')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 410.0,
                          child:renderContents('새로 올라온 컨텐츠')
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: 600.0,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100.0,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.facebook, color: Colors.white,),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.facebook, color: Colors.white,),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.facebook, color: Colors.white,),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.facebook, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500.0,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('화면 해설', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('고객 센터', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('기프트 카드', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('미디어 센터', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('투자 정보(IR)', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('입사 정보', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('이용 약관', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('개인정보', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('법적 고지', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('쿠키 설정', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('회사 정보', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              width: 200.0,
                              height: 50.0,
                              child: Text('문의 코드', style: TextStyle(color: Colors.grey),),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: (){},
                                  child: Text('서비스 코드', style: TextStyle(color: Colors.grey),),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      side: BorderSide(
                                          width: 1,
                                          color: Colors.grey
                                      )
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 50.0,),
                            renderFooterInfo(context)
                          ],

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

  renderContents(title){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 25.0),),
        SizedBox(height: 10.0,),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HoverContainer(),
              HoverContainer(),
              HoverContainer(),
              HoverContainer(),
              HoverContainer(),
              HoverContainer(),
              HoverContainer(),
            ],
          ),
        ),
      ],
    );
  }

  renderTop10Contents(title){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 25.0),),
        SizedBox(height: 10.0,),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
              HoverContainerTop10(),
            ],
          ),
        ),
      ],
    );
  }

}

class HoverContainer extends StatefulWidget {
  const HoverContainer({Key? key}) : super(key: key);

  @override
  State<HoverContainer> createState() => _HoverContainerState();
}
class _HoverContainerState extends State<HoverContainer> {

  bool _isMouseOn = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(

      child: AnimatedContainer(
        margin: const EdgeInsets.all(2.5),
        color: Colors.black,
        width:  _isMouseOn ? 400.0 :300.0  ,
        height: _isMouseOn ? 350.0 :200.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        child: _isMouseOn ? Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 130.0,
                color: Colors.grey.shade700,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_circle,size: 30.0,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle_outline_sharp,size: 30.0,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.thumb_up,size: 30.0,),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_circle_down_outlined, size: 30.0,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Row(
                        children: [
                         Expanded(
                           flex: 1,
                           child:  Row(
                             children: [
                               SizedBox(width: 10.0,),
                               Icon(Icons.add_business, size: 30.0,),
                               SizedBox(width: 2.0,),
                               Text('2시간 6분', style: TextStyle(color: Colors.grey),),
                               SizedBox(width: 5.0,),
                               Icon(Icons.add_business, size: 30.0),
                               SizedBox(width: 2.0,),
                               Icon(Icons.add_business, size: 30.0),
                             ],
                           ),
                         ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text('긴장감 넘치는', style: TextStyle(color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('흥미진진', style: TextStyle(color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('액션 스릴러', style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ) : Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey
            )
          ),
        ),
      ),
      onEnter: (val){
        print('on');
        setState(() {
          _isMouseOn = true;
        });
      },
      onExit: (val){
        setState(() {
          _isMouseOn = false;
        });
      },
    );
  }
}

class HoverContainerTop10 extends StatefulWidget {
  const HoverContainerTop10({Key? key}) : super(key: key);

  @override
  State<HoverContainerTop10> createState() => _HoverContainerTop10State();
}

class _HoverContainerTop10State extends State<HoverContainerTop10> {

  bool _isMouseOn = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(

      child: AnimatedContainer(
        margin: const EdgeInsets.all(2.5),
        color: Colors.black,
        width:  _isMouseOn ? 400.0 :300.0  ,
        height: _isMouseOn ? 350.0 :200.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn,
        child: _isMouseOn ? Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                width: MediaQuery.of(context).size.width,
                height: 130.0,
                color: Colors.grey.shade700,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_circle,size: 30.0,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.add_circle_outline_sharp,size: 30.0,),
                                ),
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.thumb_up,size: 30.0,),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_circle_down_outlined, size: 30.0,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:  Row(
                              children: [
                                SizedBox(width: 10.0,),
                                Icon(Icons.add_business, size: 30.0,),
                                SizedBox(width: 2.0,),
                                Text('2시간 6분', style: TextStyle(color: Colors.grey),),
                                SizedBox(width: 5.0,),
                                Icon(Icons.add_business, size: 30.0),
                                SizedBox(width: 2.0,),
                                Icon(Icons.add_business, size: 30.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text('긴장감 넘치는', style: TextStyle(color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('흥미진진', style: TextStyle(color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('액션 스릴러', style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ) : Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  child: Text('1', style: TextStyle(fontSize: 100.0), textAlign: TextAlign.center,),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      onEnter: (val){
        print('on');
        setState(() {
          _isMouseOn = true;
        });
      },
      onExit: (val){
        setState(() {
          _isMouseOn = false;
        });
      },
    );
  }
}

