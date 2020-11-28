import 'package:duruwa/screens/login/components/loginbackground.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
