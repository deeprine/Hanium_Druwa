import 'package:flutter/material.dart';
import 'package:duruwa/dialogflow/IT_Webdeveloper.dart';
import 'package:duruwa/dialogflow/IT_Applicationprogrammer.dart';
import 'package:duruwa/dialogflow/IT_network_server_security.dart';
import 'package:duruwa/dialogflow/IT_WEBDSGN.dart';
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return category();
  }
  Widget category() {
    return Container(
        margin: new EdgeInsets.fromLTRB(20, 0, 20, 20),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.only(right: 20.0),
                        onPressed: () {
                          _showDialog();
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => WebDeveloper()));
                        },
                        child: new Row(
                          children: <Widget>[
                            Row(
                              children: [
                                new Icon(Icons.laptop_mac),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                                ),
                                new Text(
                                  '웹개발',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.only(right: 20.0),
                        onPressed: () {
                          _showDialog();
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ApplicationProgrammer()));
                        },
                        child: new Row(
                          children: <Widget>[
                            Row(
                              children: [
                                new Icon(Icons.developer_mode),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                                ),
                                new Text(
                                  '응용프로그래머',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.only(right: 20.0),
                        onPressed: (){
                          _showDialog();
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => WebDesign()));
                        },
                        child: new Row(
                          children: <Widget>[
                            Row(
                              children: [
                                new Icon(Icons.brush),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                                ),
                                new Text(
                                  '웹디자이너',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.only(right: 20.0),
                        onPressed: () {
                          _showDialog();
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => NetworkServerSecurity()));
                        },
                        child: new Row(
                          children: <Widget>[
                            Row(
                              children: [
                                new Icon(Icons.beenhere),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                                ),
                                new Text(
                                  '네트워크/서버/보안',
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      );

  }
  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          title: new Text("DRUWA 면접관"),
          content: SingleChildScrollView(
              child:new Text("'면접시작'을 입력해주세요.",
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic
            ),
           ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("네! 알겠습니다."),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  // ListView -->
  Widget listImageView() {
    return new Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: new ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Container(
                  alignment: Alignment.center,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Card(
                          child: new Row(
                            children: [
                              new FlatButton(
                                onPressed: () {},
                                child: new Row(
                                  children: [
                                    new Text('abc'),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, index) {
                if (index == 0) return SizedBox.shrink();
                return const Divider(
                  thickness: 2.0,
                );
              },
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
