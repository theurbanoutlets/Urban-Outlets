import 'package:flutter/material.dart';
import 'package:gurgaon_food_mall/Screens/HomeScreen/RestaurantDetailScreen.dart';
import 'package:gurgaon_food_mall/Screens/Login/ForgetPasswordScreen.dart';
import 'package:gurgaon_food_mall/Screens/Login/LoginScreen.dart';
import 'package:gurgaon_food_mall/Screens/Login/SignUpScreenPage.dart';
import 'package:gurgaon_food_mall/Screens/OnBoarding/OnBoardingScreen.dart';
import 'package:gurgaon_food_mall/Screens/OnBoarding/SplashScreen.dart';
import 'package:gurgaon_food_mall/Screens/TabBar/BottomNavigationBarPage.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/OnBoarding':
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case '/LoginScreen':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/SignUpScreen':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/ForgetPasswordScreen':
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case '/BottomNavigationBarPage':
        return MaterialPageRoute(builder: (_) => BottomNavigationBarPage());
      case '/RestaurantDetailScreen':
        return MaterialPageRoute(builder: (_) => RestaurantDetailScreen());
      /*case '/LoginPage':
        return PageTransition(
            child: LoginPage(), type: PageTransitionType.rightToLeft);
      case '/VerificationPage':
        if (args is Map) {
          return PageTransition(
              child: VerificationPage(
                MobileNumber: args['MobileNumber'],
                OTP: args['OTP'],
                CountryCode: args['CountryCode'],
              ),
              type: PageTransitionType.rightToLeft);
        }
        return _errorRoute();*/

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Somethings went Wrong'),
        ),
      );
    });
  }
}
