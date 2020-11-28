import 'package:duruwa/screens/categoryscreen.dart';
import 'package:duruwa/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:duruwa/widgets/bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.black,
          accentColor: Colors.white,
          backgroundColor: Colors.blue
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[
              CategoryScreen(),
              CategoryScreen(),
              ProfileScreen(),
              CategoryScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigator(),
        ),
      ),
    );
  }
}
