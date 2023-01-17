import 'package:flutter/material.dart';
import 'package:setpper/view/pages/HomePage.dart';
import 'package:setpper/view/pages/Login_singup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Colors.deepPurple,
       
      ),
      themeMode: ThemeMode.light,
      routes: {
        "/":(context) => homePage(),
        "homepage":(context) => LoginSingup(),
      },
    ),
  );
}


