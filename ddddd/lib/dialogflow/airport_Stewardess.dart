import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:firebase_database/firebase_database.dart';

class Stewardess extends StatefulWidget {

  Stewardess({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _StewardessState createState() => _StewardessState();
}

class _StewardessState extends State<Stewardess> {
  final databaseReference = FirebaseDatabase.instance.reference();
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();
  final myController = TextEditingController();
  String name = '';

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void Response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
    await AuthGoogle(fileJson: "assets/jsonfile/newagent-wpthph-076c84be91ae.json")
    //await AuthGoogle(fileJson: "BirthDayWisher-27d44bfaad84.json")
        .build();
    Dialogflow dialogflow =
    Dialogflow(authGoogle: authGoogle, language: Language.korean);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = new ChatMessage(
      text: response.getMessage() ??
          new CardDialogflow(response.getListMessage()[0]).title,
      name: "DRUWA",
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    String named = myController.text;
    ChatMessage message = new ChatMessage(
      text: text,
      name: named != '' ? myController.text : '나',
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
    createRecord(text, named);
  }
  void createRecord(text, name){
    var postsRef = databaseReference.child('Messages').child(name);

    var newPostRef = postsRef.push();
    newPostRef.set({
      'userText': text,
    });
  }
  void _show() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          title: new Text("이름을 입력해주세요."),
          content: SingleChildScrollView(
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Text your name'
                ),
              )
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("적용"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  void _shower() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
          ),
          title: new Text("이메일을 입력해주세요."),
          content: SingleChildScrollView(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Text your email'
                ),
              )
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("보내기"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.4,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text("항공 승무원 면접"),
        actions: <Widget>[
          new RaisedButton(
            child : Text('이름변경', style: TextStyle(fontWeight: FontWeight.bold),),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: (){
              _show();
            },
            // shape: new RoundedRectangleBorder(
            //     borderRadius: new BorderRadius.circular(0.0),
            //     //side: BorderSide(color: Colors.white),
            // ),
          ),
          SizedBox(width: 5),
          new RaisedButton(
            child: Text('결과보기', style: TextStyle(fontWeight: FontWeight.bold),),
            color: Colors.lightBlue,
            textColor: Colors.white,
            onPressed: (){
              _shower();
            },
            // shape: new RoundedRectangleBorder(
            //     borderRadius: new BorderRadius.circular(0.0),
            //     //side: BorderSide(color: Colors.white),
            // ),
          )
        ],
      ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            )),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(child: new Text('B')),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(
            child: new Text(
              this.name[0],
              style: new TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}