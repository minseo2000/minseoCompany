import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController _mainScrollController;


  @override
  void initState(){
    _mainScrollController = ScrollController();
    _mainScrollController.addListener(() {

      print('offset: ${_mainScrollController.offset}');

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
              color: Colors.red,
              child: SingleChildScrollView(
                controller: _mainScrollController,
                child: Column(
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
                      color: Colors.red,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width-300.0,
                      color: Colors.red,
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
