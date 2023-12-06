import 'package:flutter/material.dart';
import 'package:function_test/screen/loginScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    )
  );
}
