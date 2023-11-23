import 'package:flutter/material.dart';
import 'package:netflix_home_page/component/footerComponent.dart';
import 'package:netflix_home_page/component/loginScreenAppBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String netflixLogoUrl = 'assets/img/netflix_logo.png';
  String mainContainerimgUrl = 'assets/img/login_img.jpeg'; // 메인 컨테이너 속 이미지 url 지정 변수

  bool _isSaveLoginInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(mainContainerimgUrl),
            fit: BoxFit.fill
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70.0,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(netflixLogoUrl),
                      margin: EdgeInsets.only(left: 40.0, top: 20.0),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1000.0,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(80.0),
                    width: 500.0,
                    height: 700.0,
                    color: const Color(0xcc000000),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('로그인', style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
                        SizedBox(height: 30.0,),
                        Container(
                          width: 450.0,
                          height: 50.0,
                          child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade700,
                                labelText: '이메일 주소 또는 전화번호',
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
                        SizedBox(height: 15.0,),
                        Container(
                          width: 450.0,
                          height: 50.0,
                          child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade700,
                                labelText: '비밀번호',
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
                        SizedBox(height: 40.0,),
                        Container(
                          width: 450.0,
                          height: 50.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red
                            ),
                            onPressed: loginButton,
                            child: Text('로그인', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Container(
                          width: 450.0,
                          height: 50.0,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                        checkColor: Colors.black,
                                        activeColor: Colors.grey,
                                        value: _isSaveLoginInfo,
                                        onChanged: (val){}
                                    ),
                                    Text('로그인 정보 저장', style: TextStyle(color: Colors.white),),

                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                   TextButton(
                                     onPressed: helpButton,
                                     child:  Text('도움이 필요하신가요?', style: TextStyle(color: Colors.white),),
                                     style: TextButton.styleFrom(
                                       primary: Colors.grey
                                     ),
                                   )
                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                        SizedBox(height: 100.0,),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Netflix 회원이 아닌가요?', style: TextStyle(color: Colors.grey, fontSize: 18.0),),
                                  TextButton(
                                  onPressed: registerButton,
                                      child: Text('지금 가입하세요.',style: TextStyle(color: Colors.white, fontSize: 18.0),),
                                    style: TextButton.styleFrom(
                                      primary: Colors.grey
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('이 페이지는 Google reCAPCHA의 보호를 받아\n 사용자가 로봇이 아님을 확인합니다.', style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.grey
                                    ),
                                      onPressed: infoButton,
                                      child: Text('자세히 알아보기.',style: TextStyle(color: Colors.blue, fontSize: 12.0),)
                                  )
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                color: const Color(0xcc000000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1000.0,
                      height: 400.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20.0,),
                          Text('질문이 있으신가요? 문의 전화: 00-308-321-0161 (수신자 부담)', style: TextStyle(color: Colors.grey, fontSize: 15.0),),
                          const SizedBox(height: 20.0,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              direction: Axis.horizontal,
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  child: Text('자주 묻는 질문', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                    primary: Colors.grey
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text('고객 센터', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                      primary: Colors.grey
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text('이용 약관', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                      primary: Colors.grey
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text('개인정보 처리방침', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                      primary: Colors.grey
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text('쿠키 설정', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                      primary: Colors.grey
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text('회사 정보', style: TextStyle(color: Colors.grey),),
                                  style: TextButton.styleFrom(
                                      primary: Colors.grey
                                  ),

                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          DropdownButton(
                              items: [],
                              onChanged: (val){},
                          ),
                          const SizedBox(height: 10.0,),
                          renderFooterInfo(context)

                        ],
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }



  //로그인 버튼 반응함수
  void loginButton(){

  }
  // 도움이 필요하신가요 버튼 함수
  void helpButton(){

  }
  //지금 가입하세요 버튼 함수
  void registerButton(){

  }
  //자세히 알아보기 버튼 함수
  void infoButton(){

  }
  // 로그인 정보 저장 체크박스
  void loginInfoChecked(){

  }
}
