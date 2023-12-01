import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_page/screen/customElements/customTweenText.dart';
import 'package:portfolio_page/screen/introMyselfScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool _selected = true;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text('Minseo 컴퍼니 챗봇'),
              content: Container(
                width: 400.0,
                height: 500.0,
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
                )
              ),
            );
          },
          anchorPoint: Offset.lerp(
            Offset(1, 1),
            Offset(1, 1),
            2.0
            )
          );
        },
        child: Text('Chat!', style: TextStyle(color: Color(0xff66cdaa),),),
      ),
      backgroundColor: Color(0xff66cdaa),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                    color: Color(0xff66cdaa),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: AnimatedOpacity(
                                duration: Duration(milliseconds: 1000),
                                child: Text('Hello, Park\'s World!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70.0, color: Colors.white),textAlign: TextAlign.center,),
                                opacity: _selected ? 0.0 : 1.0,
                              )
                            )
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              color: Colors.white,
                              width: 2,
                              height: 100.0,
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(
                            child: Text("'사업가'답게", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0, color: Colors.white),),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(
                            top: 50.0
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                                Text('About Me_', style: TextStyle(fontSize: 30.0, color: Color(0xff66cdaa), fontWeight: FontWeight.bold),),
                              SizedBox(height: 50.0,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>IntroMyselfScreen()));
                                },
                                child: Column(
                                  children: [
                                    Text('Resume', style: TextStyle(fontSize: 20.0, color: Color(0xff66cdaa), fontWeight: FontWeight.bold),),
                                    SizedBox(height: 20.0,),
                                    Container(
                                      width: 350.0,
                                      height: 0.5,
                                      color: Color(0xff66cdaa),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 30.0),
                                      width: 350.0,
                                      child: Wrap(
                                        alignment: WrapAlignment.center,
                                        crossAxisAlignment: WrapCrossAlignment.center,
                                        children: [
                                          Text('학력, 이력 등 딱딱한 이야기 뿐만 아니라,',style: TextStyle(color: Color(0xff66cdaa))),
                                          Row(
                                            children: [
                                              Text('가치관이나 MBTI 등 조금은 ', style: TextStyle(color: Color(0xff66cdaa)),),
                                              Text('진솔하고, 또 가벼운 소개', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff66cdaa)),),
                                              Text('들도 ', style: TextStyle(color: Color(0xff66cdaa)),),
                                            ],
                                          ),
                                          Text('이 곳에서 확인하실 수 있습니다.',style: TextStyle(color: Color(0xff66cdaa))),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
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
          )
      ),
    );
  }

  @override
  void initState(){
    Timer(const Duration(milliseconds: 0), () {
      setState(() {
        _selected = false;
      });
    });

  }


  renderChatBot(){

  }
}
