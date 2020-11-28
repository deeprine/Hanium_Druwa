import 'package:duruwa/screens/components/rounded_button.dart';
import 'package:duruwa/screens/login/loginscreen.dart';
import 'package:duruwa/style/constant.dart';
import 'package:duruwa/widgets/background.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'firebasedemoscreen.dart';

class ProfileBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Thank you for coming in Druwa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/images/splash_logo.jpg',
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "Logout",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FirebaseDemoScreen();
                    //return LoginScreen();
                  }),
                );
              },
            ),
            /*RoundedButton(
              text: "Sing Up",
              color: kPrimaryLightColor,
              press: () {},
            ),*/
          ],
        ),
      ),
    );
  }
}
