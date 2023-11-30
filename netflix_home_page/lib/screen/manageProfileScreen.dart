import 'package:flutter/material.dart';

class ManageProfileScreen extends StatefulWidget {
  const ManageProfileScreen({Key? key}) : super(key: key);

  @override
  State<ManageProfileScreen> createState() => _ManageProfileScreenState();
}

class _ManageProfileScreenState extends State<ManageProfileScreen> {
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
              const Text('프로필 관리', style: TextStyle(color: Colors.white, fontSize: 50.0), ),
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
                      primary: Colors.white,
                      side: const BorderSide(
                          width: 1.0,
                          color: Colors.grey
                      )
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text('완료', style: TextStyle(color: Colors.black, fontSize: 20.0),),
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
        onTap: (){},
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(profileImgUrl)
                ),
                color: Colors.grey,
              ),
              width: 180.0,
              height: 180.0,
              child: Container(
                color: Color(0x00000000),
                child: Icon(Icons.mode_edit_outline_outlined, color: Colors.white,size: 40.0,),
              )
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
      onTap: (){},
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
}
