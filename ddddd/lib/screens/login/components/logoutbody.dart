import 'package:duruwa/screens/login/components/loginbackground.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:duruwa/screens/homescreen.dart';

import 'home.dart';
import 'signup.dart';

class LogoutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Druwa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: logout(),
    );
  }
}
/*
class logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    result.delete();
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
        Widget>[
        Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Completely Logout!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'Roboto')),
      ),
    ]),
    ));
  }
}*/

class logout extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    Future<void> signOut() async {
      User user = auth.signOut() as User;
    }
    signOut();
    return new SplashScreen(
      //navigateAfterSeconds: result != null ? HomeScreen() : SignUp(),
        navigateAfterSeconds: SignUp(),
        seconds: 5,
        title: new Text(
          'Completely Logout!',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/images/dart.png', fit: BoxFit.scaleDown),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("flutter"),
        loaderColor: Colors.red);
  }
}