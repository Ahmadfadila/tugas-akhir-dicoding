import 'package:dicoding_project_tani/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_project_tani/login.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TANI SHOP',
      home: MainPage(),
    );
  }
}
 