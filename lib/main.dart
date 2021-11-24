import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5;

    var day = "tuesday";
    const PI = 3.14;

    return MaterialApp(
      home: HomePage(),
    );
  }
}

