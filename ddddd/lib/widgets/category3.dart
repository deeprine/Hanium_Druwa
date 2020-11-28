import 'package:flutter/material.dart';
import 'package:duruwa/dialogflow/civilservant_correctional.dart';
import 'package:duruwa/dialogflow/civilservant_education.dart';
import 'package:duruwa/dialogflow/civilservant_firefighting.dart';
import 'package:duruwa/dialogflow/civilservant_socialwelfare.dart';
class Category3 extends StatefulWidget {
  @override
  _Category3State createState() => _Category3State();
}

class _Category3State extends State<Category3> {
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
                            builder: (context) => Correctional()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.accessibility),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '교정직',
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
                            builder: (context) => FireFighting()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.whatshot),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '소방원',
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
                      onPressed: () {
                        _showDialog();
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SocialWelfare()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.airline_seat_recline_normal),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '사회복지직',
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
                            builder: (context) => Education()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.child_care),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '교육직',
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
}