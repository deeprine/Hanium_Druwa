import 'package:duruwa/widgets/category2.dart';
import 'package:duruwa/widgets/category3.dart';
import 'package:duruwa/widgets/category4.dart';
import 'package:flutter/material.dart';
import 'package:duruwa/widgets/headertile.dart';
import 'package:duruwa/widgets/subtitle.dart';
import 'package:duruwa/widgets/carousel.dart';
import 'package:duruwa/widgets/category.dart';
import 'package:duruwa/widgets/bottomnavigation.dart';
import 'package:duruwa/widgets/search.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          HeaderTile('Category'),
          Carousel(),
          Subtitle('IT/인터넷'),
          Category(),
          new Divider(
            color: Colors.grey[-100],
            thickness: 1,
          ),
          Subtitle('사무/경영'),
          Category2(),
          new Divider(
            color: Colors.grey[-100],
            thickness: 1,
          ),
          Subtitle('공무원'),
          Category3(),
          new Divider(
            color: Colors.grey[-100],
            thickness: 1,
          ),
          Subtitle('항공'),
          Category4(),
        ],
      )
    );
  }


//  Widget get _logoImage => Expanded(
//    child: Padding(
//      padding: EdgeInsets.only(top: 50, left: 24, right: 24),
//      child: FittedBox(
//        fit: BoxFit.contain,
//        child: CircleAvatar(
//          backgroundImage: AssetImage("assets/login_logo.gif"),
//        ),
//      ),
//    ),
//  );
}

