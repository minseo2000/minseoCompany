import 'package:flutter/material.dart';


renderMainAppBar(context){
  return AppBar(
    backgroundColor: Colors.black,
      leading: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 50.0),
        child: Row(
          children: [
            Image.asset('assets/img/netflix_logo.png', width: 100.0,),

          ],
        )
      ),
      leadingWidth: 180.0,
    title: renderNavigation(),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      SizedBox(width: 10.0,),
      IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
      SizedBox(width: 10.0,),
      InkWell(
        child: Row(
          children: [
            Image.asset('assets/img/netflix_logo.png', width: 40.0,),
            SizedBox(width: 10.0,),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
      SizedBox(width: 50.0,),
    ],
  );
}

renderNavigation(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        TextButton(
          onPressed: (){},
          child: Text('홈', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){},
          child: Text('시리즈', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){},
          child: Text('영화', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){},
          child: Text('NEW! 요즘 대세 콘텐츠', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){},
          child: Text('내가 찜한 리스트', style: TextStyle(color: Colors.white),),
        ),
        TextButton(
          onPressed: (){},
          child: Text('언어별로 찾아보기', style: TextStyle(color: Colors.white),),
        ),
      ],
    ),
  );
}