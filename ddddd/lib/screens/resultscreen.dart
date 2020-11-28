import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class resultscreen extends StatefulWidget {
  @override
  _resultscreenState createState() => _resultscreenState();
}

class _resultscreenState extends State<resultscreen> {

  DatabaseReference listTypeDb = new FirebaseDatabase().reference();
  var _firebaseRef = FirebaseDatabase().reference().child('chats');
  TextEditingController _txtCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20.0
      ),
      child: StreamBuilder(
        stream: _firebaseRef.onValue,
        builder: (context, snap) {

          if (snap.hasData && !snap.hasError && snap.data.snapshot.value != null) {

            Map data = snap.data.snapshot.value;
            List item = [];

            data.forEach((index, data) => item.add({"key": index, ...data}));

            return ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(item[index]['message'])
                );
                },
            );
          }
          else
            return Text("No data");
        },
      )

    );

  }
}
