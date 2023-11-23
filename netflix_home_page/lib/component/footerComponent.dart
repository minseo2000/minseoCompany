import 'package:flutter/material.dart';


renderFooterInfo(context){
  return Wrap(
    alignment: WrapAlignment.start,
    runAlignment: WrapAlignment.center,
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('넷플릭스서비스코리아 유한회사 통신팜내업 신고번호 : 제2018-서울종로-0426호 전화번호: 00-308-321-0161 (수신자 부담)', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('대표 : 레지널드 숀 톰프슨', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('이메일 주소 : korea@netflix.com', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('주소 : 대한민국 서울특별시 종로구 우정국로 26, 센트로폴리스 A동 20층 우편번호 03161', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('사업자 등록번호 : 165-87-00119', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('클라우드 호스팅 : Amazon Web Services Inc.', style: TextStyle(color: Colors.grey),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Text('공정거래위원회 웹사이트', style: TextStyle(color: Colors.grey),),
      )
    ],
  );
}