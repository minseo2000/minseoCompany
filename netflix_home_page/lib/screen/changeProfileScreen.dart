import 'package:flutter/material.dart';


class ChangeProfileScreen extends StatefulWidget {
  const ChangeProfileScreen({Key? key}) : super(key: key);

  @override
  State<ChangeProfileScreen> createState() => _ChangeProfileScreenState();
}

class _ChangeProfileScreenState extends State<ChangeProfileScreen> {

  bool _isAutoPlay = true;
  bool _isViewPlay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          margin: EdgeInsets.only(left: 300.0, right: 300.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('프로필 변경', style: TextStyle(fontSize: 50.0, color: Colors.white),),
                  SizedBox(height: 10.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 0.5,
                                color: Colors.grey.shade700
                            ),
                            bottom: BorderSide(
                                width: 0.5,
                                color: Colors.grey.shade700
                            )
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          width: 150.0,
                          height: 150.0,
                          color: Colors.grey,
                        ),
                        Container(
                            width: 450.0,
                            padding: EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 400.0,
                                    height: 40.0,
                                    child: TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade700,
                                          labelText: '닉네임',
                                          labelStyle: TextStyle(color: Colors.grey),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            borderSide: BorderSide(width: 1, color: Colors.grey),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            borderSide: BorderSide(width: 1, color: Colors.grey),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.visiblePassword
                                    ),
                                  ),
                                  SizedBox(height: 30.0,),
                                  Text('언어', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                                  DropdownButton(items: [], onChanged: (val){}),
                                  SizedBox(height: 30.0,),
                                  Text('게임 닉네임', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                                  SizedBox(height: 10.0,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Text('닉네임은 모든 넷플릭스 게임에서 다른 넷플릭스 회원들과 같이 플레이할 때 사용되는 고유의 이름입니다.', style: TextStyle(color: Colors.white, fontSize: 12.0),),
                                      ],
                                    ),
                                  ),
                                  TextButton(onPressed: (){}, child: Text('자세히 알아보기', style: TextStyle(color: Colors.white),)),
                                  SizedBox(height: 10.0,),
                                  Container(
                                    width: 400.0,
                                    height: 40.0,
                                    child: TextField(
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade700,
                                          labelText: '닉네임',
                                          labelStyle: TextStyle(color: Colors.grey),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            borderSide: BorderSide(width: 1, color: Colors.grey),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            borderSide: BorderSide(width: 1, color: Colors.grey),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.visiblePassword
                                    ),
                                  ),
                                  const SizedBox(height: 30.0,),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 550.0,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    top: BorderSide(
                                                        width: 0.5,
                                                        color: Colors.grey.shade700
                                                    )
                                                )
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  const SizedBox(height: 20.0,),
                                  Text('관람등급 설정:', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0,),
                                    padding: EdgeInsets.all(10.0),
                                    color: Colors.grey,
                                    child: Text('모든 관람등급', style: TextStyle(color: Colors.white),),
                                  ),
                                  const SizedBox(height: 20.0,),
                                  Text('이 프로필에서는 모든 관람등급의 콘텐츠가 표시됩니다.', style: TextStyle(color: Colors.white),),
                                  const SizedBox(height: 10.0,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black,
                                        side: BorderSide(
                                            width: 1,
                                            color: Colors.grey
                                        )
                                    ),
                                    onPressed: (){},
                                    child: Text('수정', style: TextStyle(color: Colors.grey),),
                                  ),
                                  const SizedBox(height: 20.0,),
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 550.0,
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    top: BorderSide(
                                                        width: 0.5,
                                                        color: Colors.grey.shade700
                                                    )
                                                )
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  const SizedBox(height: 10.0,),
                                  Text('자동 재생 설정', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                                  Row(
                                    children: [
                                      Checkbox(value: _isAutoPlay, onChanged: (val){}),
                                      Text('모든 디바이스에서 시리즈의 다음 화 자동 재생', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(value: _isViewPlay, onChanged: (val){}),
                                      Text('모든 디바이스에서 탐색 중 미리보기 자동 재생', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white
                            ),
                            onPressed: (){},
                            child: Text('저장', style: TextStyle(color: Colors.black),),
                          ),
                          width: 100.0,
                          height: 50.0,
                        ),
                        SizedBox(width: 20.0,),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                side: BorderSide(
                                    width: 1,
                                    color: Colors.grey
                                )
                            ),
                            onPressed: (){},
                            child: Text('취소', style: TextStyle(color: Colors.grey),),
                          ),
                          width: 100.0,
                          height: 50.0,
                        ),
                        SizedBox(width: 20.0,),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                side: BorderSide(
                                    width: 1,
                                    color: Colors.grey
                                )
                            ),
                            onPressed: (){},
                            child: Text('프로필 삭제', style: TextStyle(color: Colors.grey),),
                          ),
                          width: 150.0,
                          height: 50.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          )
      ),
    );
  }
}
