import 'package:flutter/material.dart';

class IntroMyselfScreen extends StatefulWidget {
  const IntroMyselfScreen({Key? key}) : super(key: key);

  @override
  State<IntroMyselfScreen> createState() => _IntroMyselfScreenState();
}

class _IntroMyselfScreenState extends State<IntroMyselfScreen> {
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
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(''),
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
                            onTap: (){},
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
                                  )

                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
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
                                  )

                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
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
                                  )

                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
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
}
