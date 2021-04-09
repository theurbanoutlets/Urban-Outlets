import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';

class SplashScreen extends StatefulWidget {
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushNamed('/OnBoarding');
  }

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            ContantImages.AppLogo,
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
