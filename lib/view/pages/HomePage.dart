import 'dart:async';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 5), (Timer){
      Navigator.of(context).restorablePushReplacementNamed('homepage');
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://img.freepik.com/premium-vector/good-food-logo-design_79169-10.jpg",scale: 2),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
