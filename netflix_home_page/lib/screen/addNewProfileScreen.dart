import 'package:flutter/material.dart';

class AddNewProfileScreen extends StatefulWidget {
  const AddNewProfileScreen({Key? key}) : super(key: key);

  @override
  State<AddNewProfileScreen> createState() => _AddNewProfileScreenState();
}

class _AddNewProfileScreenState extends State<AddNewProfileScreen> {

  bool _isChild = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 300.0, right: 300.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('프로필 추가', style: TextStyle(fontSize: 50.0, color: Colors.white),),
              SizedBox(height: 20.0,),
              Text('넷플릭스를 시청할 다른 사용자를 등록하시려면 프로필을 추가하세요.', style: TextStyle(fontSize: 20.0, color: Colors.grey),),
              SizedBox(height: 10.0,),
              Container(
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
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: 150.0,
                      height: 150.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 400.0,
                      height: 50.0,
                      child: TextField(),
                    ),
                    Checkbox(value: _isChild, onChanged: (val){}),
                    Text('어린이인가요?', style: TextStyle(color: Colors.white),)
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
                        child: Text('다음', style: TextStyle(color: Colors.black),),
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
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
