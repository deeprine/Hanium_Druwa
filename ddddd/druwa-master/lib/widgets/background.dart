import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // total height, width size of screen
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: size.height * 0,
            left: size.width * 0.8,
            child: Image.asset(
                'assets/icons/profile_background_circle.png'
            ),
            width: size.width * 0.5,
          ),
          Positioned(
            top: size.height * 0,
            right: size.width * 0.8,
            child: Image.asset(
                'assets/icons/profile_background_circle.png'
            ),
            width: size.width * 0.5,
          ),
          child,
        ],
      ),
    );
  }
}