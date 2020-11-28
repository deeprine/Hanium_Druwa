import 'package:duruwa/style/constant.dart';
import 'package:duruwa/style/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23)
      ),
      onPressed: press,
      color: kPrimaryColor,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(15),
          color: Colors.white,
        ),
      ),
    );
  }
}
