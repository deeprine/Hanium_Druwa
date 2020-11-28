import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  Subtitle(this.hText);
  String hText;
  @override
  Widget build(BuildContext context) {

    // 스크린 사이즈를 가져옴
    final Size size = MediaQuery.of(context).size;

    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
        child: Container(
          alignment: Alignment.bottomLeft,
          height: size.height*0.1,
//                color: Colors.blue,
          child: Text(
            hText,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w900,
              fontFamily: "",
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
