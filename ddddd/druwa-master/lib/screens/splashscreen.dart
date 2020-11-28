import 'dart:async';

import 'package:duruwa/screens/onboardingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () =>
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => OnBoardingScreen()),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(),
            Expanded(
              flex: 3,
              child: Container(
                child: Image.asset(
                  "assets/images/splash_logo.jpg",),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  "assets/images/splash_loading.gif",),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}