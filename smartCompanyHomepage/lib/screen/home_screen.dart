import 'dart:html';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController _mainScrollController;

  //애니메이션
  bool isHover = false;
  bool isHover1 = false;
  bool isHover2 = false;
  bool isHover3 = false;
  bool isHover4 = false;

  @override
  void initState(){
    _mainScrollController = ScrollController();
    _mainScrollController.addListener(() {

      _mainScrollController.hasClients;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          _mainScrollController.animateTo(0, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
        },
        child: Icon(Icons.arrow_upward),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: 300.0,
              color: Color(0xFF2E3955),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset('asset/img/me.png'),
                    ),
                    Container(
                      height: 300.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                              _mainScrollController.animateTo(0, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                            },
                            child: Container(
                              child: Text('ABOUT', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              _mainScrollController.animateTo(MediaQuery.of(context).size.height.toDouble(), duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                            },
                            child: Container(
                              child: Text('EXPERIENCE', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              _mainScrollController.animateTo(MediaQuery.of(context).size.height.toDouble()*2, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                            },
                            child: Container(
                              child: Text('EDUCATION', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              _mainScrollController.animateTo(MediaQuery.of(context).size.height.toDouble()*3, duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
                            },
                            child: Container(
                              child: Text('INTERESTS', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),),
                            ),
                          ),
                        ],
                      ),
                    )

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width-300.0,
              child: SingleChildScrollView(
                controller: _mainScrollController,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 50.0),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            child: Row(
                              children: [
                                Text('MIN ', style: TextStyle(fontSize: 70.0,fontWeight: FontWeight.bold),),
                                Text('SEO PARK', style: TextStyle(fontSize: 70.0, color: Color(0xFF2E3955), fontWeight: FontWeight.bold),),

                              ],
                            )
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.cake_rounded, color: Colors.grey,),
                                Text(' 2000. 01. 09', style: TextStyle(fontSize: 15.0, color: Colors.grey.shade500),),
                              ],
                            )
                          ),
                          Container(
                              child: Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.grey,),
                                  Text(' +(82)10-7339-4768', style: TextStyle(fontSize: 15.0, color: Colors.grey.shade500),),
                                ],
                              )
                          ),
                          SizedBox(height: 50.0,),
                          Container(
                            child: Text('안녕하세요! 컴퓨터 프로그래밍 공부하고 있는 박민서라고 합니다.\n매일매일 생산성있는 삶을 사는 것을 목표로 열심히 코딩하고 있습니다!', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
                          ),
                          SizedBox(height: 20.0,),
                          Container(
                            child: Text('앞으로 잘 부탁드립니다! 저에 대해 더 알고 싶으시다면 스크롤을 내려주세요!', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle
                                ),
                                width: 80.0,
                                height: 100.0,
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child: Image.asset('asset/img/github.png', color: Colors.grey,),
                                )
                              ),
                              SizedBox(width: 30.0,),
                              Container(
                                  width: 90.0,
                                  height: 100.0,
                                  child: InkWell(
                                    onTap: (){

                                    },
                                    child: Image.asset('asset/img/tistory.png', color: Colors.grey,),
                                  )
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 49,
                            child: Container(
                              margin: EdgeInsets.only(left: 30.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('Travel To ', style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, ),),
                                      Text('Europe', style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: Color(0xFF2E3955)),),
                                      SizedBox(width: 20.0,),
                                      Text('~2023.09', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  SizedBox(height: 20.0,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ),
                          Expanded(
                            flex: 49,
                            child: Container(
                              margin: EdgeInsets.only(left: 30.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(width: 150.0,),
                                      Text('Travel To ',style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),),
                                      Text('Gyeong Ju', style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: Color(0xFF2E3955)),),
                                      SizedBox(width: 20.0,),
                                      Text('~2023.11', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  SizedBox(height: 20.0,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 150.0,
                                          height: 200.0,
                                        ),
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                        MyAnimatedContainer(),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 98,
                              child: Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("Minseo's", style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, ),),
                                        Text(' Portfolio', style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: Color(0xFF2E3955)),),
                                      ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30.0,),
                                    Container(
                                      child: Text(''),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                              flex: 98,
                              child: Container(
                                margin: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("WHAT", style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, ),),
                                        Text(' I LOVE', style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: Color(0xFF2E3955)),),
                                      ],
                                    ),
                                    SizedBox(height: 20.0,),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                          MyPortfolioContainer(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30.0,),
                                    Container(
                                      child: Text(''),
                                    ),
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {

  bool isHover = false;
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (val){
        setState(() {
          isHover = true;
        });
      },
      onExit: (val){
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        width: isHover ? 200.0 : 150.0,
        height: isHover ? 250.0 : 200.0,
        duration: Duration(milliseconds: 150),
        color: Colors.grey,
        child: Image.asset(imageUrl),
      ),
    );
  }
}


class MyPortfolioContainer extends StatefulWidget {
  const MyPortfolioContainer({Key? key}) : super(key: key);

  @override
  State<MyPortfolioContainer> createState() => _MyPortfolioContainerState();
}

class _MyPortfolioContainerState extends State<MyPortfolioContainer> {

  bool isHover = false;
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (val){
        setState(() {
          isHover = true;
        });
      },
      onExit: (val){
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(5.0),
        width: isHover ? 200.0 : 150.0,
        height: isHover ? 200.0 : 150.0,
        duration: Duration(milliseconds: 150),
        color: Colors.grey,
        child: Image.asset(imageUrl),
      ),
    );
  }
}

