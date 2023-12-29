import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_page/screen/customElements/customTweenText.dart';
import 'package:portfolio_page/screen/introMyselfScreen.dart';
import 'package:portfolio_page/screen/introScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  bool _isChatBotClicked = false;
  bool _isChatBotFirstClicked = false;


  List<Widget> screenList = [
      IntroScreen(),
      IntroMyselfScreen(),
  ];

  // 메인스크린으로 사용하기!

  @override
  Widget build(BuildContext context) {

    Get.put(ScreenController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          setState(() {
            _isChatBotClicked = true;
            _isChatBotFirstClicked = true;
          });
        },
        child: Text('Chat!', style: TextStyle(color: Color(0xff66cdaa),),),
      ),
      backgroundColor: Color(0xff66cdaa),
      body: GetBuilder<ScreenController>(
        builder: (controller){
          return WillPopScope(
          child: Stack(
            children: [
              GestureDetector(
                // 이부분
                child: screenList[controller.getScreenCursor()],
                onTap: (){
                  setState(() {
                    _isChatBotClicked = false;
                  });
                },
              ),
              Positioned(
                  bottom: 40.0,
                  right: 40.0,
                  child: Visibility(
                      visible: _isChatBotFirstClicked,
                      child: AnimatedOpacity(
                        opacity: _isChatBotClicked ? 1.0 : 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.0)
                            ),
                            color: Colors.white,

                          ),
                          padding: EdgeInsets.all(20.0),
                          width: 400.0,
                          height: 550.0,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 20.0,
                                child: Text('Minseo 컴퍼니 챗봇', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 480.0,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 9,
                                      child: Container(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('챗 봇'),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  CustomTweenText(
                                                                    text: '안녕하세요! 박민서 고객님 무엇을 도와드릴까요?',
                                                                    style: TextStyle(),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Text('챗 봇'),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  CustomTweenText(
                                                                    text: '안녕하세요! 박민서 고객님 무엇을 도와드릴까요?',
                                                                    style: TextStyle(),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: [
                                                              Text('고객님'),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                children: [
                                                                ],
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              fillColor: Color(0xff66cdaa),
                                              focusColor: Color(0xff66cdaa),
                                              hoverColor: Color(0xff66cdaa),
                                              labelText: '입력',
                                              hintText: '질문을 입력해주세요!',
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 1,
                                                    color: Color(0xff66cdaa),
                                                  )
                                              ),
                                              hintStyle: TextStyle(
                                                color: Color(0xff66cdaa),
                                              ),
                                              labelStyle: TextStyle(
                                                color: Color(0xff66cdaa),
                                              ),
                                              suffixIcon: IconButton(
                                                icon: Icon(Icons.send, color: Color(0xff66cdaa),),
                                                onPressed: (){

                                                },
                                              )
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        duration: Duration(
                            milliseconds: 500
                        ),
                      )
                  )
              ),
            ],
          ) ,
          onWillPop: ()async{
            setState(() {
              if(controller.getScreenCursor() - 1<0){

              }else {
                controller.setScreenCursor(controller.getScreenCursor() - 1);
              }
            });
            return false;
          });
        },
      )
    );
  }

  @override
  void initState(){


  }



}

class ScreenController extends GetxController{
  int screenCursor = 0;

  void setScreenCursor(int cursor){
    screenCursor = cursor;
    update();
  }
  int getScreenCursor(){
    return screenCursor;
  }
}