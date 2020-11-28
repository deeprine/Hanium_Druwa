import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          Positioned(
            left: size.width * 0.65,
            top: 0,
            child: Image.asset('assets/icons/profile_background_circle.png'),
          ),
          Positioned(
            right: size.width * 0.65,
            bottom: 0,
            child: Image.asset('assets/icons/profile_background_circle.png'),
          ),
          child,
        ],
      ),
    );
  }
}
