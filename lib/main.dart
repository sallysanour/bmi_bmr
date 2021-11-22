import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:healthy/home_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home : AnimatedSplashScreen(
        backgroundColor: Colors.white,
        duration: 2000,
        splash: Image(
            image: AssetImage('images/splashlogo.jpg')
        ),
        nextScreen: homescreen(),
        splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
        splashIconSize: 200.0,
      ),
    );
  }
}