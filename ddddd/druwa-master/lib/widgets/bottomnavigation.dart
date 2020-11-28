import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 30.0),
      color: Colors.white,
      child: Container(
        height: size.height*0.06,
        child: TabBar(
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(30, 60, 120, 0.1), Color.fromRGBO(30, 60, 120, 0.9)]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "홈",
                    style: TextStyle(
                      fontFamily: "Menlo"
                    ),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("면접"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("프로필"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("레포트"),
                ),
              ),
            ]),
      ),
    );
  }
}
