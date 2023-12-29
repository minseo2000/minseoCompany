import 'package:flutter/material.dart';
import 'package:netflix_home_page/screen/addNewProfileScreen.dart';
import 'package:netflix_home_page/screen/mainScreen.dart';
import 'package:netflix_home_page/screen/manageProfileScreen.dart';

class SelectProfileScreen extends StatefulWidget {
  const SelectProfileScreen({Key? key}) : super(key: key);

  @override
  State<SelectProfileScreen> createState() => _SelectProfileScreenState();
}

class _SelectProfileScreenState extends State<SelectProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('넷플릭스를 시청할 프로필을 선택하세요.', style: TextStyle(color: Colors.white, fontSize: 50.0), ),
              const SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  renderProfile('곰', ''),
                  renderProfile('곰', ''),
                  renderProfile('곰', ''),
                  renderProfile('곰', ''),
                  addProfile()
                ],
              ),
              SizedBox(height: 50.0,),
              Container(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.grey
                    )
                  ),
                  onPressed: manageProfileButton,
                  child: const Text('프로필 관리', style: TextStyle(color: Colors.grey),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  renderProfile(String name, String profileImgUrl){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>MainScreen()));
      },
      child: Column(
        children: [
          Container(
            width: 180.0,
            height: 180.0,
            child: Image.asset(profileImgUrl,),
          ),
          const SizedBox(height: 20.0,),
          Container(
            width: 180.0,
            height: 30.0,
            child: Text(name, style: const TextStyle(color: Colors.grey, fontSize: 20.0), textAlign: TextAlign.center,),
          ),
        ],
      )
    );
  }
  addProfile(){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>AddNewProfileScreen()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: 180.0,
            height: 180.0,
            child: const Icon(Icons.add, color: Colors.grey,),
          ),
          const SizedBox(height: 20.0,),
          Container(
            width: 180.0,
            height: 30.0,
            child: Text('프로필 추가', style: TextStyle(color: Colors.grey, fontSize: 20.0), textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }


  // 프로필 관리 버튼 함수
  void manageProfileButton(){
    Navigator.push(context, MaterialPageRoute(builder: (_)=> ManageProfileScreen()));
  }
}
