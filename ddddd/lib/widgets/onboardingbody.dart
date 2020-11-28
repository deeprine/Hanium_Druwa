import 'package:duruwa/screens/components/default_button.dart';
import 'package:duruwa/screens/components/onboarding_content.dart';
import 'package:duruwa/screens/homescreen.dart';
import 'package:duruwa/style/constant.dart';
import 'package:duruwa/style/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "드루와에 오신 것을 환영합니다!", "image": "assets/images/onboard1.jpg"},
    {"text": "면접 연습할 기회가 없었나요?", "image": "assets/images/onboard2.jpg"},
    {"text": "저희 드루와 챗봇이 면접을 도와드립니다!", "image": "assets/images/onboard3.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: List.generate(splashData.length,
                            (index) => buildDot(index),
                      ),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(flex: 2,),
                    SizedBox(
                      child: DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                        },
                      ),
                      width: double.infinity,
                      height: getProprtionateScreenHeight(56),
                    ),
                    Spacer(flex: 5,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      padding: EdgeInsets.only(right: 5.0),
      height: 6,
      width: currentPage == index ? 50 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}
