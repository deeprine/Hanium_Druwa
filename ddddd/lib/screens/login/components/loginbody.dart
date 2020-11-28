import 'package:duruwa/screens/login/components/loginbackground.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:duruwa/screens/homescreen.dart';

import 'home.dart';
import 'signup.dart';

class LoginBody extends StatelessWidget {
  //const LoginBody
  LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Druwa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
    /*return LoginBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          /*Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
          ),),*/
        ],
      ),
    );*/
  }
/*
  Widget _loading() {
    return Scaffold(
        appBar: AppBar(title: Text('loading...')),
        body: Center(child: CircularProgressIndicator())
    );
  }

  Widget _loginPage(){
    return Scaffold(
        appBar: AppBar(
            title: Text('login page')
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('id'), Text('pass'),
                  RaisedButton(
                      child: Text('login'),
                      onPressed: (){
                        //AuthPage();
                      }
                  )
                ]
            )
        )
    );
  }

  Widget _main(){
    return Scaffold(
        appBar: AppBar(
            title: Text('app.user'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  _loginPage();
                },
              )
            ],
        ),
        body: Center(child: Text('contents'))
    );
  }*/
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    return new SplashScreen(
        navigateAfterSeconds: result != null ? HomeScreen() : SignUp(),
        //navigateAfterSeconds: result != null ? Home(uid: result.uid) : SignUp(),
        seconds: 5,
        title: new Text(
          'Welcome To Druwa!',
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