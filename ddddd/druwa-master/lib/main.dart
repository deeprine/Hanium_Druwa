import 'package:duruwa/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:duruwa/screens/splashscreen.dart';

void main() => runApp(Duruwa());

class Duruwa extends StatefulWidget {
  @override
  _DuruwaState createState() => _DuruwaState();
}

class _DuruwaState extends State<Duruwa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Druwa',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
//        fontFamily: "Schyler",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen()
//      initialRoute: OnboardingScreen.routeName,
//      routes: routes,
    );
  }
}