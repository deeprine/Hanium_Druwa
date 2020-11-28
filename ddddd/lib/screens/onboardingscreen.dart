import 'package:duruwa/style/size_config.dart';
import 'package:duruwa/widgets/onboardingbody.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
  
}
