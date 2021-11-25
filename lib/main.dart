import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    bringVegetables(thaila: true);
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.5;

    var day = "tuesday";
    const PI = 3.14;

    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }

  //parameters inside curly braces are optional
  bringVegetables({@required bool thaila, int rupees = 100}){

  }
}

