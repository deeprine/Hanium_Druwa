import 'package:duruwa/screens/components/rounded_button.dart';
import 'package:duruwa/screens/login/loginscreen.dart';
import 'package:duruwa/style/constant.dart';
import 'package:duruwa/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileBody extends StatelessWidget {
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
              "Welcome to Druwa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/images/splash_logo.jpg',
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "Login",
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              text: "Sing Up",
              color: kPrimaryLightColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
