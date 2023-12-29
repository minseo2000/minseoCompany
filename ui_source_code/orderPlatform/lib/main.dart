import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderplatform/screen/homeScreen.dart';
import 'package:orderplatform/screen/loginScreen.dart';
import 'package:orderplatform/screen/order/orderListScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Order Platform',
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()),
        //GetPage(name: '/home', page: () => HomeScreen()),
        //GetPage(name: '/orderList', page: ()=>OrderListScreen())
      ],
      initialRoute: '/',
    )
  );
}
