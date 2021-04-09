import 'package:flutter/material.dart';

class ContantImages {
  static const String AppLogo = "Assets/AppLogo/owner.jpg";
  static const String Veg = "Assets/Food/veg.png";
  static const String NonVeg = "Assets/Food/nonVeg.png";
}

class CommonConst {
  static const double ButtonSize = 20;
  static const String LoginBtn = "Login";
}

class ConstColor {
  static const white = '#FFFFFF';
  static const black = '#000000';
}

class OnBoardingScreenConst {
  static const String AppLogo = "Assets/AppLogo/owner.jpg";
  static const SliderTitleColor = ConstColor.black;
  static const double SliderTitleFont = 20;
  static const double SliderDescriptionFont = 20;
  static const String Slider1text = "Onboarding demo1";
  static const String Slider1img = "Assets/Food/Italiyan_Pasta.jpg";
  static const String Slider1description = "Lorem ipsum";
  static const String Slider2text = "Onboarding demo2";
  static const String Slider2img = "Assets/Food/pizza.jpg";
  static const String Slider2description = "Lorem ipsum";
  static const String Slider3text = "Onboarding demo3";
  static const String Slider3img = "Assets/Food/Italiyan_Pasta.jpg";
  static const String Slider3description = "Lorem ipsum";
}

class LoginScreenconst {
  static const double Loginfont = 48;
  static const String Loginfontfamily = "";
  static const double CreateAccountfont = 16;
  static const String CreateAccountfontfamily = "";
  static const double Loginbtnfont = 20;
  static const Loginbtncolor = ConstColor.black;
  static const String Loginbtnfontfamily = "";
  static const String Googleicon = "Assets/Icons/googleicon.png";
  static const String facebookicon = "Assets/Icons/Facebook.png";
}

class SignUpScreenconst {
  static const double SignUpfont = 48;
  static const String SignUpfontfamily = "";
  static const double CreateAccountfont = 20;
  static const String CreateAccountfontfamily = "";
  static const double SignUpbtnfont = 20;
  static const SignUpbtncolor = ConstColor.black;
  static const String SignUpbtnfontfamily = "";
}

class ForgetPasswordScreenconst {
  static const double FPtitle = 25;
  static const String FPfontfamily = "";
  static const double FPtitle2 = 18;
  static const double FPDescription = 18;
  static const double CreateAccountfont = 20;
  static const String CreateAccountfontfamily = "";
  static const double SignUpbtnfont = 20;
  static const SignUpbtncolor = ConstColor.black;
  static const String SignUpbtnfontfamily = "";
}

class BottomTabbarScreenConst {
  static const String HomeScreenAppbar = "HomeScreen";
  static const String OrderAppbar = "Orders History";
  static const String SearchAppbar = "Search Items";
  static const String CartAppbar = "Cart";
  static const double appbarfont = 20;
}

Size displaySize(BuildContext context) {
  //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  //debugPrint('Height = ' + displaySize(context).height.toString());
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  // debugPrint('Width = ' + displaySize(context).width.toString());
  return displaySize(context).width;
}
