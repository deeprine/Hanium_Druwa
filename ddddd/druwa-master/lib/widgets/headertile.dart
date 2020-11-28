import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class HeaderTile extends StatelessWidget {
  HeaderTile(this.hText);
  String hText;
  @override
  Widget build(BuildContext context) {

    // 스크린 사이즈를 가져옴
    final Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: size.height*0.1,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      hText,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }

//  Widget searchBar() {
//    return Container(
//      child: FloatingSearchBar.builder(
//        pinned: true,
//        itemCount: 100,
//        padding: EdgeInsets.only(top: 10.0),
//        itemBuilder: (BuildContext context, int index) {
//          return ListTile(
////            leading: Text(index.toString()),
//          );
//        },
//        endDrawer: Drawer(
//          child: Container(),
//        ),
//        onChanged: (String value) {
//
//        },
//        onTap: () {},
//        decoration: InputDecoration.collapsed(
//          hintText: "직무를 검색하세요",
//          hintStyle: TextStyle(
//            fontSize: 12.0,
//            fontWeight: FontWeight.w200
//          )
//        ),
//      ),
//    );
//  }
}
