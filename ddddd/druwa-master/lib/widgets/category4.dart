import 'package:flutter/material.dart';
import 'package:duruwa/dialogflow/aiport_airgroundposition.dart';
import 'package:duruwa/dialogflow/airport_dutyfreeshop.dart';
import 'package:duruwa/dialogflow/airport_pilot.dart';
import 'package:duruwa/dialogflow/airport_Stewardess.dart';
class Category4 extends StatefulWidget {
  @override
  _Category4State createState() => _Category4State();
}

class _Category4State extends State<Category4> {
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
                            builder: (context) => Stewardess()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.people),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '승무원',
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
                            builder: (context) => Pilot()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.airplanemode_active),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '파일럿',
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
                            builder: (context) => DutyFreeShop()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.attach_money),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '면세점',
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
                            builder: (context) => AirgroundPosition()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.transfer_within_a_station),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '지상직',
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