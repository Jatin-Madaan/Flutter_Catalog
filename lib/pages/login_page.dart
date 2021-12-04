import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username"
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  // RaisedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   }, 
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   color: Colors.deepPurple,
                  //   elevation: 5,                   
                  // )
                ]
              ),
            )
          ]
        ),
      ),
    );
  }
}