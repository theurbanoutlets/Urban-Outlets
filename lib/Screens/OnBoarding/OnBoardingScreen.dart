import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Utilities/Contants.dart';
//import 'package:hexcolor/hexcolor.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageList = [
    PageModel(
      color: Colors.grey.shade300,
      heroAssetPath: OnBoardingScreenConst.Slider1img,
      //heroAssetColor: Colors.white,
      title: Text('FIND RESTAURANT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors
                .black, // HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderTitleFont,
          )),
      body: Text('Find the Best restaurant in your neighborhood',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors
                .black, //HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderDescriptionFont,
          )),
      iconAssetPath: OnBoardingScreenConst.Slider2img,
    ),
    PageModel(
      color: Colors.grey.shade300,
      heroAssetPath: OnBoardingScreenConst.Slider2img,
      //heroAssetColor: Colors.white,
      title: Text('PICK THE BEST',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors
                .black, //HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderTitleFont,
          )),
      body: Text('Pick the right place using trusted ratings and reviws',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors
                .black, // HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderDescriptionFont,
          )),
      iconAssetPath: OnBoardingScreenConst.Slider3img,
    ),
    PageModel(
      color: Colors.grey.shade300,
      heroAssetPath: OnBoardingScreenConst.Slider2img,
      //heroAssetColor: Colors.white,
      title: Text('CHOSE YOUR MEAL',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors
                .black, //HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderTitleFont,
          )),
      body: Text("Easily find the type of food you're craving",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors
                .black, // HexColor(OnBoardingScreenConst.SliderTitleColor),
            fontSize: OnBoardingScreenConst.SliderDescriptionFont,
          )),
      iconAssetPath: OnBoardingScreenConst.Slider3img,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        skipButtonTextStyle: TextStyle(color: Colors.black),
        doneButtonBackgroundColor: Colors.blue,
        onDoneButtonPressed: () =>
            Navigator.of(context).pushNamed('/LoginScreen'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushNamed('/LoginScreen'),
      ),
    );
  }
}
