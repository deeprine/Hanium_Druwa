import 'package:duruwa/style/constant.dart';
import 'package:duruwa/style/size_config.dart';
import 'package:flutter/material.dart';
import '../components/onboarding_content.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 30.0
        ),
        Text(
          "DRUWA",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Image.asset(
          image,
          height: getProprtionateScreenHeight(350),
          width: getProportionateScreenWidth(300),
        )
      ],
    );
  }
}
