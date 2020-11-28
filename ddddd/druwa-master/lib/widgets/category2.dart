import 'package:flutter/material.dart';
import 'package:duruwa/dialogflow/office_financial_accounting.dart';
import 'package:duruwa/dialogflow/office_personnel_general_affairs.dart';
import 'package:duruwa/dialogflow/office_planning_office.dart';
import 'package:duruwa/dialogflow/office_production_quality_control.dart';
class Category2 extends StatefulWidget {
  @override
  _Category2State createState() => _Category2State();
}

class _Category2State extends State<Category2> {
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
                            builder: (context) => FinancialAccounting()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.assessment),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '금융/회계',
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
                            builder: (context) => PersonnelGeneralAffairs()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.assignment),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '총무',
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
                            builder: (context) => PlanningOffice()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.brightness_low),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '기획부',
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
                            builder: (context) => ProductionQualityControl()));
                      },
                      child: new Row(
                        children: <Widget>[
                          Row(
                            children: [
                              new Icon(Icons.donut_small),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                              ),
                              new Text(
                                '품질관리',
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

